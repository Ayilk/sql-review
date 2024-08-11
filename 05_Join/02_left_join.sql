--Todas las columnas de las tablas users y dni, 
--mostrando todas las filtas de la tabla users 
--pero solo las coincidentes de la tabla dn, rellenando las demas con null
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Las columnas name y dni_number de las tablas users y dni
--mostrando todas las filas de la tabla users
--mostrando las filas donde el campo user_id coincide, rellenando las filas faltantes con null
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Las columnas name de la tabla users y la columna dni_number de la tabla dni
--mostrando todas las filas de la tabla dni y sólo mostrando las filas de la tabla users
--en las que el campo user_id coincie en ambas tablas, las filas de la columna nombre que no 
--estan asignadas a un dni con null
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

/*
Muesta las columnas name de la tabla users y la columna name de la tabla langages
uniendo primero toda la tabla users con los elementos de la tabla users_languages en los que el campo user_id coinice
luego une toda esa tabla con lo elementos de la tabla languages en las que el campo language_id coincide
*/
SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;
