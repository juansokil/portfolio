-- CREA UNA TABLA PARTICIONADA VACIA

CREATE table IF NOT EXISTS  schema_name.table_name (
	fecha timestamp NOT NULL,
	dni text NOT NULL,
	country varchar(3) NULL,
	ip_address inet NULL,
	duration_avg numeric(10, 2) NULL,
	binaria bool NULL,
	puntaje float8 NULL
)
partition by range(dt);

-- HACE UN UPDATE DE LOS DATOS BASADOS EN UNA CONDICION

update schema_name.table_name
set dni = 'no hay documento' where puntaje > 70;


--INSERTAR DATOS DESDE OTRA TABLA

insert into schema_name.table_name
select fecha, dni, country, ip_address, duration_avg, binaria, puntaje from schema_name.table_name_antigua

--INSERTAR DATOS A MANO
INSERT INTO schema_name.table_name(fecha, dni, country, ip_address, duration_avg, binaria, puntaje from schema_name.table_name_antigua)
VALUES ('2022-10-10'::timestamp, 'DNI299999', 'ARG','123.12.31.45',12.76,True,87 ));



