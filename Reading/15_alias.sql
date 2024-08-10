
--Las columnas name e init_date entregadas en una tabla cuya columna de fecha de inicio  es llamada de una manera particual donde la fecha de incio es '2024-03-05'
SELECT name, init_date AS 'Fecha de inicio en el curso de materiales' FROM users WHERE init_date ='2024-03-05';

SELECT name, init_date AS "Fecha de inicio en el curso de materiales" FROM users WHERE init_date ="2024-03-05";

-- Una columna llamada Nombre COmpleto con el nombre y el apellido en cada fila
SELECT CONCAT('Nombre: ',name, ' - Apellido: ', lastname) AS 'Nombre Completo' FROM users;
