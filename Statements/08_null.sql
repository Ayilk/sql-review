--Todas las columnas de la tabla users donde el email es Nulo
SELECT * FROM users WHERE email IS NULL;

-- Todas las columnas de la tabla users donde el email no es nulo
SELECT * FROM users WHERE email IS NOT NULL;

--Todas las columnas de la tabla users donde el email no es nullo y el apllido es Jimenez
SELECT * FROM users WHERE email IS NOT NULL AND lastname = 'Jimenez';

--Las columnas name, lastname y una columna llamada IFNULL en la que aparece el campo email con el valor 0 cuando el campo es nulll
SELECT name, lastname, IFNULL(email, 0)  FROM users ;

