

/*
Una query guardada 
*/

-- Crea un procedure llamado p_all_users, cuya instrucción es que regrese todas las columnas de la tabla users
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END //
DELIMITER ;

--Llama al procedure p_all_users y lo ejecuta
CALL p_all_users;

--Crea un procedure llamado p_init_date_users al que se le incluirá un parámetro de tipo date
--Como condición en la instrucción se iguala el campo init_date al valor que llega como parámetro i_date
 DELIMITER //
CREATE PROCEDURE p_init_date_users(IN i_date date)
BEGIN
	SELECT * FROM users WHERE init_date = i_date;
END //
DELIMITER ;

--Llamamos a la procedure pasandole como parámetro una fecha
CALL p_init_date_users('2020-04-29');

--Elimina el Procedure
DROP PROCEDURE p_all_users;

