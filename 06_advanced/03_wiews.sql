
/*
Creamos una vista de una tabla que llamaremos v_users_init_date
que mostrara las columnas name e init_date de la tabla users
donde el valor del campo init_date sea mayor al primero de enero del 2020
Esta es una instrucción que queda guardada y se puede acceder a ella en la sección de views
*/
CREATE VIEW v_users_init_date AS 
SELECT name, init_date
FROM users
WHERE init_date > '2020-01-01';

--Vemos la tabla v_users_initdate
SELECT * FROM v_users_init_date;

--Elimina la vista con el nombre v_users_ini_date
DROP VIEW v_users_init_date