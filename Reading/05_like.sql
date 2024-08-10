-- La columna nombre de la tabla users cuyo email contiene el string gmail.com
SELECT name FROM users WHERE email LIKE '%gmail.com';

--La columna name cuyo nombre incluya antes o despues la palabra sara
SELECT name FROM users WHERE name LIKE '%sara%';

