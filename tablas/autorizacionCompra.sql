CREATE OR REPLACE FUNCTION
autorizacionCompra (numero_tarjeta char(16),codseguridad char(4),nrocomercio int, monto decimal(7,2)) RETURNS BOOLEAN 
AS
$$
DECLARE
    tarjeta_aux record;
	fecha_actual timestamp = current_timestamp(0); --current_date -> (año-mes-dua)
	nrorechazo int;
	suma_compras_impagas decimal(7, 2) = 0;
	nrooperacion int;
BEGIN
	SELECT count(*) INTO nrorechazo FROM rechazo;
	nrorechazo := nrorechazo + 1;
	SELECT * INTO tarjeta_aux FROM tarjeta AS t WHERE t.nrotarjeta = numero_tarjeta;

    --Validacion de existencia tarjeta y estado
	IF NOT found OR tarjeta_aux.estado = 'anulada' THEN
		INSERT INTO rechazo VALUES (nrorechazo, numero_tarjeta, nrocomercio, fecha_actual, monto, 'Tarjeta no válida o no vigente.');
		RETURN false;
    ELSIF tarjeta_aux.estado = 'suspendida' THEN
		INSERT INTO rechazo VALUES (nrorechazo, numero_tarjeta, nrocomercio, fecha_actual, monto, 'La tarjeta se encuentra suspendida.');
		RETURN false;
	END IF;

	--Validacion de CodSeguridad
	IF NOT tarjeta_aux.codseguridad = codseguridad THEN
		INSERT INTO rechazo VALUES (nrorechazo, numero_tarjeta, nrocomercio, fecha_actual, monto, 'Código de seguridad invalido.');
		RETURN false;
	END IF;

	--Validacion del Monto con el Limite de Compra
	SELECT sum(c.monto) INTO suma_compras_impagas FROM compra AS c WHERE c.nrotarjeta = numero_tarjeta AND pagado = false;
	IF NOT found THEN
		suma_compras_impagas := suma_compras_impagas + monto;
	ELSIF found THEN
		suma_compras_impagas = monto;
	END IF;
	IF suma_compras_impagas > tarjeta_aux.limitecompra THEN
		INSERT INTO rechazo VALUES (nrorechazo, numero_tarjeta, nrocomercio, fecha_actual, monto, 'Supera límite de tarjeta.');
		RETURN false;
	END IF;

	--Validacion de Vencimiento de la Tarjeta
	IF Cast(tarjeta_aux.validahasta || '01' AS timestamp ) < fecha_actual THEN
	 	INSERT INTO rechazo VALUES (nrorechazo, numero_tarjeta, nrocomercio, fecha_actual, monto, 'Plazo de vigencia expirado.');
		RETURN false;
	END IF;

    --Inserción de compra
	SELECT count(*) INTO nrooperacion FROM compra;
	INSERT INTO compra VALUES (nrooperacion + 1, numero_tarjeta, nrocomercio, fecha_actual, monto, false);
	RETURN true;
END
$$
LANGUAGE plpgsql;
