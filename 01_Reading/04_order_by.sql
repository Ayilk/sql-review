-- Todas las columnas de la tabla users ordenadas por fecha de la mas antigua a la mas reciente
SELECT * FROM users ORDER BY init_date;

-- Todas las columnas de la tabla users ordenadas por fecha de inicio de manera descendente, es decir, de la mas reciente a la más antigua 
SELECT * FROM users ORDER BY init_date DESC;

-- Todas las columnas de la tabla users cuyo apellido es JImenes ordenados de manera descendente
SELECT * FROM users WHERE lastname = 'Jimenez' ORDER BY init_date DESC;


