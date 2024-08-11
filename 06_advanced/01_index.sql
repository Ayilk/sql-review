
--Crea un índice llamado id_name en la tabla users asociado a la columna name
CREATE INDEX idx_name ON users(name);

--Crea un ínidice único llamado idx_name en la tabla users asociado a la columna name
CREATE UNIQUE INDEX idx_name ON users(name);

--Crea un índice único llamado idx_name_lastname en la tabla users asociado a la columna nombre y a la columna lastname
CREATE UNIQUE INDEX idx_name_lastname ON users(name, lastname);

--Esto daría como resultado una búsqueda mucho más rápida del nombre, pues estos ya estarían referenciados
SELECT * FROM users WHERE name = 'Juan';

--Borra el índice llamado idx_name de la tabla users
DROP INDEX idx_name ON users;