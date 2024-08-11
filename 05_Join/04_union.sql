/*
Este operador es la aplicación de un left join  y un right join
En Este caso se muestran dos columnas, una columna que muestra el user_id de la tabla users y otra que muestra el user_id de la tabla dni,
ambas con un alias. 
Lo primero que hace es un left join de la tabla users con la tabla dni
y lo une con el right join de la tabla users con la tabla dni.
*/

SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id 
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT users.user_id AS user_id, dni.user_id AS d_user_id 
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
