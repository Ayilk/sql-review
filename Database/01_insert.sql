-- Inserta un nuevo usuario con los campos (user_id, name, lastname, email) 
--con los valores (8, 'Ramón', 'Gonzalez', 'ramon@gmail.com') ambas listas en el mismo ordden
--En este caso user_id es un campo obligatorio y uninico, por lo que al intentar insertar un valor 
--que ya existe hay un error
INSERT INTO users (user_id, name, lastname, email) 
VALUES (8, 'Ramón', 'Gonzalez', 'ramon@gmail.com');

--En este caso el campo user_id sigue siendo obligatorio y único pero adems es autoincremental
--Es decir que auqnue no lo coloquemos, se inserta el documento y se crea el valor del campo en automatico
--con el valor siguente.
INSERT INTO users ( name, lastname, email) 
VALUES ('Ramón', 'Gonzalez', 'ramon@gmail.com');