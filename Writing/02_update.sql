-- Actualiza el campo lastname del usuario con el user_id 8
UPDATE users SET lastname = 'Gomez' WHERE user_id = 8;

--Actualiza los campos lastname e init_date de la tabla users donde el user_id es 8 
UPDATE users SET lastname = 'Gutierrez', init_date = '2018-08-27' WHERE user_id = 8;