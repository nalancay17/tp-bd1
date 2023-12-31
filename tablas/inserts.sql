--CLIENTES--
INSERT INTO cliente (nrocliente, nombre, apellido, domicilio, telefono) VALUES
    (1,'diego','aysa','cano','111544556689'),
    (2,'luis','fuentes','libertador','111534551101'),
    (3,'carolina','arce','belgrano','111588551234'),
    (4,'matias','gonzalez','roca','111580234455'),
    (5,'leo','gerez','belgrano','111550504041'),
    (6,'naty','villalba','alvear','114530312020'),
    (7,'german','diaz','corrientes','114530032001'),
    (8,'nicolas','perez','libertador','114440010011'),
    (9,'facundo','anze','cuba','114312346556'),
    (10,'mariano','labonia','cabildo','114389205434'),
    (11,'agustin','martinez','congreso','114330543016'),
    (12,'yanet','flores','amenabar','114440155564'),
    (13,'camila','coria','moldes','114530032020'),
    (14,'daiana','lopez','figueroa','114520215041'),
    (15,'yamila','lopez','monroe','114422124040'),
    (16,'ezequiel','alvarez','constituyentes','114490902340'),
    (17,'matias','garcia','triunvirato','114512345678'),
    (18,'cristian','torres','zabala','114057564321'),
    (19,'hernan','hidalgo','ibera','114400001234'),
    (20,'diego','maradona','lacroze','114820214455');
--
--
--COMERCIOS--
INSERT INTO comercio (nrocomercio, nombre, domicilio, codigopostal, telefono) values
    (1,'todomoda','correa','B1617FDA','114538681201'),
    (2,'macdonalds','cabildo','B1621DFA','114400556415'),
    (3,'starbucks','cabildo','B2121AAB','114565568912'),
    (4,'sportline','arias','C2011BFD','114465495212'),
    (5,'fravega','cabildo','B1814FDA','113466440012'),
    (6,'grimoldi','vidal','B1920FDA','114534556615'),
    (7,'garbarino','echeverria','M2120BDF','114522101214'),
    (8,'lacoste','sucre','B1618BDB','114423451012'),
    (9,'fila','pampa','B2100ACF','114533212125'),
    (10,'zara','nunez','B2223CDF','114542406566'),
    (11,'topper','ramallo','B2018CAB','114066663123'),
    (12,'megatone','pico','B1619FEB','114570123720'),
    (13,'walmart','vedia','B1520ECF','114012201520'),
    (14,'jumbo','libertador','S1718EAB','111257405120'),
    (15,'easy','libertador','B2116AEB','111420212222'),
    (16,'coto','cramer','B1415ACB','111612141516'),
    (17,'fravega','congreso','B1115FCD','111812132018'),
    (18,'pigmento','congreso','N1016CDE','111915201515'),
    (19,'nike','9dejulio','B1615ABC','112034181617'),
    (20,'adidas','libertador','B1615ABC','112134202123');
--
--
--TARJETAS--
INSERT INTO tarjeta (nrotarjeta, nrocliente, validadesde, validahasta, codseguridad, limitecompra, estado) VALUES
    ('4041606120202344',1,'202006','202506','0235',25000.00,'vigente'),
    ('4545606123248845',2,'202012','202512','3656',65000.00,'vigente'),
    ('6065123489900012',3,'201906','232406','0026',1999.99,'suspendida'),
    ('4545626500015689',4,'201801','202301','9986',55000.99,'vigente'),
    ('2023566599912365',5,'202102','202602','4545',120000.50,'vigente'),
    ('6065236588886556',6,'201612','202112','6223',15000.90,'anulada'),
    ('8080568914569876',7,'201708','202208','0202',60000.00,'vigente'),
    ('1001566500018965',8,'201812','202312','5445',100000.90,'vigente'),
    ('6065566512213663',9,'201901','202401','4646',54000.40,'vigente'),
    ('4646899800012323',10,'202002','202502','0365',35900.90,'vigente'),
    ('3031568965562314',11,'202204','202704','9789',99000.90,'vigente'),
    ('4554688945657887',12,'202205','202705','6445',10000.00,'suspendida'),
    ('6006896512458881',13,'202103','202603','4498',88900.99,'vigente'),
    ('4545650001338998',14,'202009','202509','6558',120000.00,'vigente'),
    ('9888981232655689',15,'201907','202407','0123',65560.99,'vigente'),
    ('4545600688851665',16,'201806','202306','6777',30000.00,'vigente'),
    ('9009655600015654',17,'202206','202706','3656',5500.10,'vigente'),
    ('8081655678981231',18,'202205','202705','0356',45000.90,'vigente'),
    ('4545622636660001',19,'201712','202212','2324',60000.00,'vigente'),
    ('2002123499881234',20,'201711','202211','9889',7500.99,'vigente'),
    ('4545655689890002',1,'202101','202601','1165',29990.99,'anulada'),
    ('9009655622225656',5,'202006','202506','0950',95990.90,'vigente');
--
--
--CIERRES--
--Con terminacion en 0--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,0,'2021-12-01','2022-01-01','2022-01-05'),
    (2022,2,0,'2022-01-01','2022-02-01','2022-02-05'),
    (2022,3,0,'2022-02-01','2022-03-01','2022-03-05'),
    (2022,4,0,'2022-03-01','2022-04-01','2022-04-05'),
    (2022,5,0,'2022-04-01','2022-05-01','2022-05-05'),
    (2022,6,0,'2022-05-01','2022-06-01','2022-06-05'),
    (2022,7,0,'2022-06-01','2022-07-01','2022-07-05'),
    (2022,8,0,'2022-07-01','2022-08-01','2022-08-05'),
    (2022,9,0,'2022-08-01','2022-09-01','2022-09-05'),
    (2022,10,0,'2022-09-01','2022-10-01','2022-10-05'),
    (2022,11,0,'2022-10-01','2022-11-01','2022-11-05'),
    (2022,12,0,'2022-11-01','2022-12-01','2022-12-05');

--Con terminacion en 1--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,1,'2021-12-01','2022-01-01','2022-01-05'),
    (2022,2,1,'2022-01-01','2022-02-01','2022-02-05'),
    (2022,3,1,'2022-02-01','2022-03-01','2022-03-05'),
    (2022,4,1,'2022-03-01','2022-04-01','2022-04-05'),
    (2022,5,1,'2022-04-01','2022-05-01','2022-05-05'),
    (2022,6,1,'2022-05-01','2022-06-01','2022-06-05'),
    (2022,7,1,'2022-06-01','2022-07-01','2022-07-05'),
    (2022,8,1,'2022-07-01','2022-08-01','2022-08-05'),
    (2022,9,1,'2022-08-01','2022-09-01','2022-09-05'),
    (2022,10,1,'2022-09-01','2022-10-01','2022-10-05'),
    (2022,11,1,'2022-10-01','2022-11-01','2022-11-05'),
    (2022,12,1,'2022-11-01','2022-12-01','2022-12-05');

--Con terminacion en 2--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,2,'2021-12-02','2022-01-02','2022-01-06'),
    (2022,2,2,'2022-01-02','2022-02-02','2022-02-06'),
    (2022,3,2,'2022-02-02','2022-03-02','2022-03-06'),
    (2022,4,2,'2022-03-02','2022-04-02','2022-04-06'),
    (2022,5,2,'2022-04-02','2022-05-02','2022-05-06'),
    (2022,6,2,'2022-05-02','2022-06-02','2022-06-06'),
    (2022,7,2,'2022-06-02','2022-07-02','2022-07-06'),
    (2022,8,2,'2022-07-02','2022-08-02','2022-08-06'),
    (2022,9,2,'2022-08-02','2022-09-02','2022-09-06'),
    (2022,10,2,'2022-09-02','2022-10-02','2022-10-06'),
    (2022,11,2,'2022-10-02','2022-11-02','2022-11-06'),
    (2022,12,2,'2022-11-02','2023-12-02','2022-12-06');

--Con terminacion en 3--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,3,'2021-12-02','2022-01-02','2022-01-06'),
    (2022,2,3,'2022-01-02','2022-02-02','2022-02-06'),
    (2022,3,3,'2022-02-02','2022-03-02','2022-03-06'),
    (2022,4,3,'2022-03-02','2022-04-02','2022-04-06'),
    (2022,5,3,'2022-04-02','2022-05-02','2022-05-06'),
    (2022,6,3,'2022-05-02','2022-06-02','2022-06-06'),
    (2022,7,3,'2022-06-02','2022-07-02','2022-07-06'),
    (2022,8,3,'2022-07-02','2022-08-02','2022-08-06'),
    (2022,9,3,'2022-08-02','2022-09-02','2022-09-06'),
    (2022,10,3,'2022-09-02','2022-10-02','2022-10-06'),
    (2022,11,3,'2022-10-02','2022-11-02','2022-11-06'),
    (2022,12,3,'2022-11-02','2023-12-02','2022-12-06');

--Con terminacion en 4--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,4,'2021-12-03','2022-01-03','2022-01-07'),
    (2022,2,4,'2022-01-03','2022-02-03','2022-02-07'),
    (2022,3,4,'2022-02-03','2022-03-03','2022-03-07'),
    (2022,4,4,'2022-03-03','2022-04-03','2022-04-07'),
    (2022,5,4,'2022-04-03','2022-05-03','2022-05-07'),
    (2022,6,4,'2022-05-03','2022-06-03','2022-06-07'),
    (2022,7,4,'2022-06-03','2022-07-03','2022-07-07'),
    (2022,8,4,'2022-07-03','2022-08-03','2022-08-07'),
    (2022,9,4,'2022-08-03','2022-09-03','2022-09-07'),
    (2022,10,4,'2022-09-03','2022-10-03','2022-10-07'),
    (2022,11,4,'2022-10-03','2022-11-03','2022-11-07'),
    (2022,12,4,'2022-11-03','2022-12-03','2022-12-07');

--Con terminacion en 5--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,5,'2021-12-03','2022-01-03','2022-01-07'),
    (2022,2,5,'2022-01-03','2022-02-03','2022-02-07'),
    (2022,3,5,'2022-02-03','2022-03-03','2022-03-07'),
    (2022,4,5,'2022-03-03','2022-04-03','2022-04-07'),
    (2022,5,5,'2022-04-03','2022-05-03','2022-05-07'),
    (2022,6,5,'2022-05-03','2022-06-03','2022-06-07'),
    (2022,7,5,'2022-06-03','2022-07-03','2022-07-07'),
    (2022,8,5,'2022-07-03','2022-08-03','2022-08-07'),
    (2022,9,5,'2022-08-03','2022-09-03','2022-09-07'),
    (2022,10,5,'2022-09-03','2022-10-03','2022-10-07'),
    (2022,11,5,'2022-10-03','2022-11-03','2022-11-07'),
    (2022,12,5,'2022-11-03','2022-12-03','2022-12-07');

--Con terminacion en 6--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,6,'2021-12-04','2022-01-04','2022-01-08'),
    (2022,2,6,'2022-01-04','2022-02-04','2022-02-08'),
    (2022,3,6,'2022-02-04','2022-03-04','2022-03-08'),
    (2022,4,6,'2022-03-04','2022-04-04','2022-04-08'),
    (2022,5,6,'2022-04-04','2022-05-04','2022-05-08'),
    (2022,6,6,'2022-05-04','2022-06-04','2022-06-08'),
    (2022,7,6,'2022-06-04','2022-07-04','2022-07-08'),
    (2022,8,6,'2022-07-04','2022-08-04','2022-08-08'),
    (2022,9,6,'2022-08-04','2022-09-04','2022-09-08'),
    (2022,10,6,'2022-09-04','2022-10-04','2022-10-08'),
    (2022,11,6,'2022-10-04','2022-11-04','2022-11-08'),
    (2022,12,6,'2022-11-04','2022-12-04','2022-12-08');

--Con terminacion en 7--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,7,'2021-12-04','2022-01-04','2022-01-08'),
    (2022,2,7,'2022-01-04','2022-02-04','2022-02-08'),
    (2022,3,7,'2022-02-04','2022-03-04','2022-03-08'),
    (2022,4,7,'2022-03-04','2022-04-04','2022-04-08'),
    (2022,5,7,'2022-04-04','2022-05-04','2022-05-08'),
    (2022,6,7,'2022-05-04','2022-06-04','2022-06-08'),
    (2022,7,7,'2022-06-04','2022-07-04','2022-07-08'),
    (2022,8,7,'2022-07-04','2022-08-04','2022-08-08'),
    (2022,9,7,'2022-08-04','2022-09-04','2022-09-08'),
    (2022,10,7,'2022-09-04','2022-10-04','2022-10-08'),
    (2022,11,7,'2022-10-04','2022-11-04','2022-11-08'),
    (2022,12,7,'2022-11-04','2022-12-04','2022-12-08');

--Con terminacion en 8--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,8,'2021-12-05','2022-01-05','2022-01-09'),
    (2022,2,8,'2022-01-05','2022-02-05','2022-02-09'),
    (2022,3,8,'2022-02-05','2022-03-05','2022-03-09'),
    (2022,4,8,'2022-03-05','2022-04-05','2022-04-09'),
    (2022,5,8,'2022-04-05','2022-05-05','2022-05-09'),
    (2022,6,8,'2022-05-05','2022-06-05','2022-06-09'),
    (2022,7,8,'2022-06-05','2022-07-05','2022-07-09'),
    (2022,8,8,'2022-07-05','2022-08-05','2022-08-09'),
    (2022,9,8,'2022-08-05','2022-09-05','2022-09-09'),
    (2022,10,8,'2022-09-05','2022-10-05','2022-10-09'),
    (2022,11,8,'2022-10-05','2022-11-05','2022-11-09'),
    (2022,12,8,'2022-11-05','2022-12-05','2022-12-09');

--Con terminacion en 9--
INSERT INTO cierre (año, mes, terminacion, fechainicio, fechacierre, fechavto) VALUES
    (2022,1,9,'2021-12-05','2022-01-05','2022-01-09'),
    (2022,2,9,'2022-01-05','2022-02-05','2022-02-09'),
    (2022,3,9,'2022-02-05','2022-03-05','2022-03-09'),
    (2022,4,9,'2022-03-05','2022-04-05','2022-04-09'),
    (2022,5,9,'2022-04-05','2022-05-05','2022-05-09'),
    (2022,6,9,'2022-05-05','2022-06-05','2022-06-09'),
    (2022,7,9,'2022-06-05','2022-07-05','2022-07-09'),
    (2022,8,9,'2022-07-05','2022-08-05','2022-08-09'),
    (2022,9,9,'2022-08-05','2022-09-05','2022-09-09'),
    (2022,10,9,'2022-09-05','2022-10-05','2022-10-09'),
    (2022,11,9,'2022-10-05','2022-11-05','2022-11-09'),
    (2022,12,9,'2022-11-05','2022-12-05','2022-12-09');

----consumo
----
INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (1, '4041606120202344', '0235', 1, 7002.33),
    (2, '4041606120202344', '0235', 5, 36502.15),
    (3, '4041606120202344', '0235', 8, 23.0),
    (4, '4041606120202344', '0235', 9, 47.2),
    (5, '4041606120202344', '0235', 12, 320.99);

INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (6, '4646899800012323', '0365', 19, 9013.20),
    (7, '4646899800012323', '0365', 11, 41101.15),
    (8, '4646899800012323', '0365', 3, 581.81),
    (9, '4646899800012323', '0365', 11, 198.15);

INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (10, '4554688945657887', '6445', 10, 7032.33),
    (11, '4554688945657887', '6445', 15, 16302.15);

INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (12, '6065236588886556', '6223', 13, 9013.20),
    (13, '6065236588886556', '6223', 3, 19110.15);

INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (14, '2023566599912365', '4545', 5, 887.24),
    (15, '2023566599912365', '4545', 13, 209.51),
    (16, '2023566599912365', '4545', 5, 1020.78);

INSERT INTO consumo (id, nrotarjeta, codseguridad, nrocomercio, monto) VALUES
    (17, '9009655622225656', '0950', 2, 44.99),
    (18, '9009655622225656', '0950', 17, 875.65);
