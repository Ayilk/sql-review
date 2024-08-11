--Los triggers son instrucciones que se ejecutan automaticamente cuando ocurren eventos en la tabla
--Eventos programados cuando pase algo en la tabla


--Creamos una nueva tabla en dónde se guardaran los email antiguos cuando se acttualice el campo email de la tabla users
CREATE TABLE email_history (
email_history_id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
user_id INT NOT NULL,
email VARCHAR(50)
);


--CREACIÖN del trrigger indicando como nombre del trigger tg_email
--indicando que es un evento que se disparara DESPUES  de que se actualice la tabla users
--indicando que sucederá para cada fila de la tabla
--El evento esta delimitaddo por un begin y por un end
--dentro tenemos un condiicional: si el email antigo es distinto del nuevo
--entonces inserta en los campos user:id e email de la taba email_history
--los valores del id del usuario y el antiguo email
delimiter |
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN 
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
    END IF;
END;
|
delimiter ;

--Actualizamos la tabla users y se dispara el evento
UPDATE users SET email ='nuevo@gmail.com' WHERE user_id = 1;

--Borra el trigger
DROP TRIGGER tg_email;

SELECT * FROM users;