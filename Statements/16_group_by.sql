-- Devuelve una columna con los diferentes valores de init_date
SELECT MAX(init_date) FROM users GROUP BY init_date;

--Devuelve una columna con el número de elementos que hay con cada valor de init_date 
SELECT COUNT(init_date) FROM users GROUP BY init_date;

--Devuelve dos collumnas, una con el número de elementos que hay con cada valor de init_date y otra con el valor del init_date 
SELECT COUNT(init_date), init_date FROM users GROUP BY init_date;

--Devuelve dos columnas, una con el número de elementos que hay con cada valor, otra con el valor de init_ date, ordenada de manera ascendente
SELECT COUNT(init_date), init_date FROM users GROUP BY init_date ORDER BY init_date;
