CREATE TABLE languages(
language_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50) NOT NULL
);

/*
Creamos una tabla en la que estableceremos la relación muchos a muchos
Se establecen las dos llaves primarias de las tablas que se van a relacionar
*/

CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

--INSERT Insertamos datos en la collumna name de la tabla languages
INSERT INTO languages (name) VALUES ('javascript');
INSERT INTO languages (name) VALUES ('python');
INSERT INTO languages (name) VALUES ('c#');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('COBOL');
INSERT INTO languages (name) VALUES ('Swift');

--Insertamos datos relacioando el id del lenguaje con el id del usuario
--Estas tuplas son únicas, pues así lo especificamos al crear la tabla

INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 7);
INSERT INTO users_languages (user_id, language_id) VALUES (3, 2);


