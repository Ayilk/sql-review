--Todas las columnas de la tabla users donde el email es Nulo
SELECT * FROM users WHERE email IS NULL;

-- Todas las columnas de la tabla users donde el email no es nulo
SELECT * FROM users WHERE email IS NOT NULL;

--Todas las columnas de la tabla users donde el email no es nullo y el apllido es Jimenez
SELECT * FROM users WHERE email IS NOT NULL AND lastname = 'Jimenez';
