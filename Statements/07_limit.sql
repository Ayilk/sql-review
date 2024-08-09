-- Todas las columnas de los 5 primeros elementos de la tabla users
SELECT * FROM users LIMIT 5;

--Todas las columnas de los 3 primeros elementos de la tabla users donde el apellido es diferente de jimenez o el nombre es Miriam
SELECT * FROM users WHERE NOT lastname = 'Jimenez' OR name = 'Miriam' LIMIT 3;