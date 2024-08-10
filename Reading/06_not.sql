-- Todas las collumnas de la tabla user donde el apellido es diferente de Jimenez
SELECT * FROM users WHERE NOT lastname = 'Jimenez';


-- Todas las columnas de la tabla users donde el apellido es diferente de JImñenez y el nombre es Miriam
-- Aquí el elemento AND es un operador lógico, es decir, los resultados cumplen ambas condiiones
SELECT * FROM users WHERE NOT lastname = 'Jimenez' AND name = 'Miriam';

--TOdas las columnas de la tabla users donde el apellido es diferente de Jiménez o el nombre es Miriam
--Aqui el elelmento OR es un operador lógicco, es decir, los resultaddos cumplen con una condición o con la otra
SELECT * FROM users WHERE NOT lastname = 'Jimenez' OR name = 'Miriam';

