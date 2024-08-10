--Crea una nueva tabla llamada dn que tenrá el campo dni_id como llave primaria
--y el campo user_id de la tabla users como llave foránea
CREATE TABLE dni(
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);