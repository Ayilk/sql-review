 -- Todas las columnas de la tabla users cuyo atributo lastname es 'Jimenez'
 SELECT * FROM users WHERE lastname = 'Jimenez';

-- La columna nombre de la tabla users donde el apellido es jimenez
 SELECT name FROM users WHERE lastname = 'Jimenez';

--Las filas cuyos nombres son diferentes y el apellido es jimenez
 SELECT DISTINCT name  FROM users WHERE lastname = 'Jimenez';

--Las filas cuyos apellidos son diferents entre si y el apellido es jimeenez
--En mi ejemplo tenía dos elementos con este apellido y al aplicar este comando sólo me  trae un elemento
 SELECT DISTINCT lastname FROM users WHERE lastname = 'Jimenez';
