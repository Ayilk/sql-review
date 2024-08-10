/*
Creamos la tabla companies que vamos a relacionar con la tabla usuarios, de manera eque una company pueda tener muchos usuarios
Luego modificamos la tabla usuarios para agregarle la columna de la llave foranea de la compania
*/
CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);