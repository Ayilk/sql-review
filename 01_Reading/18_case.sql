-- Todas las columnas de la tabla users con una columna extra llamada con un alias init_date_text
--cuyas filas contienen un texto que depende de si init_date es mayor  a una fecha específica
SELECT *, 
CASE 
	WHEN init_date > '2020-01-01' THEN 'Mayor al 2020'
	else 'Menor'
END AS init_date_text
FROM users;

--Todas las columnas de la tabla users con una columna extra llamada con un alias init_date_text
--cuyas filas mostraran un texto dependiendo de si el campo init_date está entre un par dde fechas
SELECT *, 
CASE 
	WHEN init_date BETWEEN '2019-01-01' AND '2019-12-31' THEN 'Año 2019'
    WHEN init_date BETWEEN '2018-01-01' AND '2018-12-31' THEN 'Año 2018'
	else 'Otros'
END AS init_date_text
FROM users;

--Todas las columnas de la tabla users con una columna extra cuyo nombre es la instrucción data
--cuyas filas mostraran un texto dependiendo de si el campo init_date está entre un par dde fechas
SELECT *, 
CASE 
	WHEN init_date BETWEEN '2019-01-01' AND '2019-12-31' THEN 'Año 2019'
    WHEN init_date BETWEEN '2018-01-01' AND '2018-12-31' THEN 'Año 2018'
	else 'Otros'
END 
FROM users;

--Todas las columnas de la tabla users con una columna extra llamada con un alias init_date_text
--cuyas filas contienen un valor booleano que depende de si init_date es mayor  a una fecha específica
SELECT *, 
CASE 
	WHEN init_date > '2020-01-01' THEN True
	else false
END AS init_date_text
FROM users;

--Todas las columnas de la tabla users con una columna extra llamada con un alias init_date_text
--cuyas filas contienen un valor booleano o null que depende de si init_date es mayor  a una fecha específica
SELECT *, 
CASE 
	WHEN init_date > '2020-01-01' THEN True	
END AS init_date_text
FROM users;
