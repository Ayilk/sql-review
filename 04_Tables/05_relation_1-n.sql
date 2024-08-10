/*
Creamos la tabla companies que vamos a relacionar con la tabla usuarios, de manera eque una company pueda tener muchos usuarios
Luego modificamos la tabla usuarios para agregarle la columna de la llave foranea de la compania
*/
CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

--Creamos la columna que tendrá la llave foranea de la tabla companies en la tabla users
ALTER TABLE users
ADD company_id int;

ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

--INSERT Insertamos datos en la tabla companies, en la columna name
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');
INSERT INTO companies (name) VALUES ('Microsoft');
INSERT INTO companies (name) VALUES ('SpaceX');
INSERT INTO companies (name) VALUES ('VivieEnergía');

--Actualizamos la columna recién creada company_id de la tabla users
--relacionando una compañia con un usuario
UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 7;
UPDATE users SET company_id = 3 WHERE user_id = 5;
UPDATE users SET company_id = 4 WHERE user_id = 6;