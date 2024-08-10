--Crea una nueva tabla llamada dn que tenrá el campo dni_id como llave primaria
--y el campo user_id de la tabla users como llave foránea
CREATE TABLE dni(
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);

--INSERT
INSERT INTO dni (dni_number, user_id) VALUES (12345678, 1);
INSERT INTO dni (dni_number, user_id) VALUES (12345671, 2);
INSERT INTO dni (dni_number, user_id) VALUES (12345672, 3);
INSERT INTO dni (dni_number) VALUES (123456783);