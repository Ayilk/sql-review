--Todas las columnas de las tablas users y dni, 
--mostrando todas las filtas de la tabla dni 
--pero solo las coincidentes de la tabla users, rellenando las demas con null
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--Las columnas name y dni_number de las tablas users y dni
--mostrando todas las filas de la tabla dni
--mostrando las filas donde el campo user_id coincide, rellenando las filas faltantes con null
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--Las columnas name de la tabla users y la columna dni_number de la tabla dni
--mostrando todas las filas de la tabla users y sólo mostrando las filas de la tabla dni
--en las que el campo user_id coincie en ambas tablas, las filas de la columna dni_number que no 
--estan asignadas a un user con null
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

/*
Muesta las columnas name de la tabla users y la columna name de la tabla langages
uniendo primero toda la tabla users_languages con los elementos de la tabla users en los que el campo user_id coinice
luego une toda la tabla languages  con los elementos de la tabla resultante anterior en las que el campo language_id coincide
*/
SELECT users.name, languages.name 
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;
