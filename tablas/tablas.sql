CREATE TABLE cliente (
	nrocliente int,
	nombre text NOT NULL,
	apellido text NOT NULL,
	domicilio text,
	telefono char(12) NOT NULL
);

CREATE TABLE tarjeta (
	nrotarjeta char(16),
	nrocliente int NOT NULL,
	validadesde char(6) NOT NULL,
	validahasta char(6) NOT NULL,
	codseguridad char(4) NOT NULL,
	limitecompra decimal(8,2) NOT NULL,
	estado char(10) NOT NULL CHECK (estado IN ('vigente', 'suspendida', 'anulada'))
);

CREATE TABLE comercio (
	nrocomercio int,
	nombre text NOT NULL,
	domicilio text NOT NULL,
	codigopostal char(8) NOT NULL,
	telefono char(12)
);

CREATE TABLE compra (
	nrooperacion int,
	nrotarjeta char(16) NOT NULL,
	nrocomercio int NOT NULL,
	fecha timestamp NOT NULL,
	monto decimal(7,2) NOT NULL,
	pagado boolean NOT NULL
);

CREATE TABLE cierre (
	año int,
	mes int,
	terminacion int,
	fechainicio date NOT NULL,
	fechacierre date NOT NULL,
	fechavto date NOT NULL
);

CREATE TABLE cabecera (
	nroresumen int,
	nombre text NOT NULL,
	apellido text NOT NULL,
	domicilio text,
	nrotarjeta char(16) NOT NULL,
	desde date NOT NULL,
	hasta date NOT NULL,
	vence date NOT NULL,
	total decimal(8,2) NOT NULL
);

CREATE TABLE detalle (
	nroresumen int,
	nrolinea int,
	fecha date NOT NULL,
	nombrecomercio text NOT NULL,
	monto decimal(7,2) NOT NULL
);

CREATE TABLE rechazo (
	nrorechazo int,
	nrotarjeta char(16) NOT NULL,
	nrocomercio int NOT NULL,
	fecha timestamp NOT NULL,
	monto decimal(7,2) NOT NULL,
	motivo text NOT NULL
);

CREATE TABLE alerta (
	nroalerta int,
	nrotarjeta char(16) NOT NULL,
	fecha timestamp NOT NULL,
	nrorechazo int NOT NULL,
	codalerta int NOT NULL CHECK (codalerta IN (0, 1, 5, 32)), --0:rechazo, 1:compra 1min, 5:compra 5min, 32:límite
	descripcion text NOT NULL
);

CREATE TABLE consumo ( --tabla para pruebas
	id int,
	nrotarjeta char(16),
	codseguridad char(4),
	nrocomercio int,
	monto decimal(7,2)
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY (nrocliente);
ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_pk PRIMARY KEY (nrotarjeta);
ALTER TABLE comercio ADD CONSTRAINT comercio_pk PRIMARY KEY (nrocomercio);
ALTER TABLE compra ADD CONSTRAINT compra_pk PRIMARY KEY (nrooperacion);
ALTER TABLE rechazo ADD CONSTRAINT rechazo_pk PRIMARY KEY (nrorechazo);
ALTER TABLE cierre ADD CONSTRAINT cierre_pk PRIMARY KEY (año, mes, terminacion);
ALTER TABLE cabecera ADD CONSTRAINT cabecera_pk PRIMARY KEY (nroresumen);
ALTER TABLE detalle ADD CONSTRAINT detalle_pk PRIMARY KEY (nroresumen, nrolinea);
ALTER TABLE alerta ADD CONSTRAINT alerta_pk PRIMARY KEY (nroalerta);
ALTER TABLE consumo ADD CONSTRAINT consumo_pk PRIMARY KEY (id);


ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_nrocliente_fk FOREIGN KEY (nrocliente) REFERENCES cliente (nrocliente);
ALTER TABLE compra ADD CONSTRAINT compra_nrotarjeta_fk FOREIGN KEY (nrotarjeta) REFERENCES tarjeta (nrotarjeta);
ALTER TABLE compra ADD CONSTRAINT compra_nrocomercio_fk FOREIGN KEY (nrocomercio) REFERENCES comercio (nrocomercio);
ALTER TABLE rechazo ADD CONSTRAINT rechazo_nrotarjeta_fk FOREIGN KEY (nrotarjeta) REFERENCES tarjeta (nrotarjeta);
ALTER TABLE rechazo ADD CONSTRAINT rechazo_nrocomercio_fk FOREIGN KEY (nrocomercio) REFERENCES comercio (nrocomercio);
ALTER TABLE cabecera ADD CONSTRAINT cabecera_nrotarjeta_fk FOREIGN KEY (nrotarjeta) REFERENCES tarjeta (nrotarjeta);
ALTER TABLE detalle ADD CONSTRAINT detalle_nroresumen_fk FOREIGN KEY (nroresumen) REFERENCES cabecera (nroresumen);
ALTER TABLE alerta ADD CONSTRAINT alerta_nrotarjeta_fk FOREIGN KEY (nrotarjeta) REFERENCES tarjeta (nrotarjeta);
ALTER TABLE alerta ADD CONSTRAINT alerta_nrorechazo_fk FOREIGN KEY (nrorechazo) REFERENCES rechazo (nrorechazo);

