--AÑADIMOS un nuevo campo llamado type a la tabla products_07
--que va a ser un tipo de dato varchar con una longitudd maxima de 15 caracteres
-- y que tendrá la restricción de ser no nullo
ALTER TABLE products_07 
ADD	type varchar(15) NOT NULL;


--RENOMBRAMOS la columna type y lo cambiamos por type_of de la tabla products_07
ALTER TABLE products_07 
RENAME COLUMN  type TO type_of;

--MODIFICAMOS la longitud maxima de la columna type_of de la tabla products_07
ALTER TABLE products_07 
MODIFY COLUMN type_of varchar(50);

--ELIMINAMOS la columna type_of de la tabla products_07
ALTER TABLE products_07 
DROP COLUMN type_of;