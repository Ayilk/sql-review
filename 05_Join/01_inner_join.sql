-
--RELACIÓN UNO A UNO ----------------------------

--Todos los campos de la tabla users y la tabla dni
SELECT * FROM users
INNER JOIN dni;

--Todas las columnas de la tabla users y de la tabla dni en las que 
--el campo id es coincidente
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

--Funciona igual que el comando anterior, pero en alguno motores de consulta si hay diferente 
-- entre un INNER JOIN y un JOIN 
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;


--RELACIÓN UNO A MUCHOS -----------------------------

--TOdas las columnas de las tablas users y companies en las que los campos company_id son iguales
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

--Las columna nname dde la tabla users y la columna name de la tabla users
--en las que el company_id es el mismo
SELECT users.name, companies.name FROM users
JOIN companies
ON users.company_id = companies.company_id;

--REALACIÓN MUCHOS A MUCHOS ----------------------------------------

--Todas las columnas de las tablas users_languages, users y languages
--en las que el campo user_id coincide en las tablas users_languages y users
-- y el campo language_id coincide en las tablas users_languages y languages
SELECT * 
FROM users_languages
INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;

--Las columnas name de las tablas users y languages en las que el campo user_id coincide en las
--tablas users_languages y users y el campo language_id coincide en las tablas users_languages y languages
SELECT users.name, languages.name
FROM users_languages
INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;
