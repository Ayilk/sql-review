
--Creamos una tabla nueva llamada productos con los campos id, name, costo y fecha de llegada
--con su respectivo tipo de dato

CREATE TABLE productos (
	id int,
	name varchar(20),
	costo int,
	fecha_llegada date
);

--Crea una nueva tabla llamada products con con campos con restriccion NOT NULL
-- lo que hace que no se puedan insertar elementos con estos campos vacíos
CREATE TABLE products (
	id int NOT NULL,
	name varchar(20) NOT NULL,
	costo int,
	fecha_llegada date
);

--Crea una nueva tabla llamada products_01 con campos cons restriccion NOT NULL
--y un nuevo campo "unique" indicando que el campo id debe ser único.
CREATE TABLE products_01 (
	id int NOT NULL,
	name varchar(20) NOT NULL,
	cost int,
	arrived date,
    unique(id)
);

--Crea una nueva tabla llamada products_03 con campos con restricción NOT NULL
--el campo id marcado como unico e indicano que el campo id es la llave primaria
CREATE TABLE products_03 (
	id int NOT NULL,
	name varchar(20) NOT NULL,
	cost int,
	arrived date,
    unique(id),
    PRIMARY KEY(id)
);

--Crea una nueva tabla llamda products_04 con campos con restricción NOT NULL,
-- con el campo id unico e indicado como llave primaria y con la restricción de que
--sólo se guarden datos cuyo campo cost sea mayor del valor 10
CREATE TABLE products_04 (
	id int NOT NULL,
	name varchar(20) NOT NULL,
	cost int,
	arrived date,
    unique(id),
    PRIMARY KEY(id),
    CHECK (cost > 10)
);

--Crea una nueva tabla llamda products_05 con campos con restricción NOT NULL,
-- con el campo id unico e indicado como llave primaria y con la restricción de que
--sólo se guarden datos cuyo campo cost sea mayor del valor 10
--Y el valor por default en caso de que no se le de uno será la fecha y hora actual
CREATE TABLE products_05 (
	id int NOT NULL,
	name varchar(20) NOT NULL,
	cost int,
	arrived datetime DEFAULT CURRENT_TIMESTAMP(),
    unique(id),
    PRIMARY KEY(id),
    CHECK (cost > 10)
);

--Crea una nueva tabla llamda products_06 con campos con restricción NOT NULL,
-- con el campo id unico e indicado como llave primaria y con la restricción de que
--sólo se guarden datos cuyo campo cost sea mayor del valor 10
--Y el valor por default en caso de que no se le de uno será la fecha y hora actual
--El id tiene una restricción mas para asegurarnos de que sea un campo no nullo y unico
--y es la restricción auto_increment para que el valor se incremente automaticamenteto
CREATE TABLE products_06 (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(20) NOT NULL,
	cost int,
	arrived datetime DEFAULT CURRENT_TIMESTAMP(),
    unique(id),
    PRIMARY KEY(id),
    CHECK (cost > 10)
);