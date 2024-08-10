CREATE TABLE languages(
language_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50) NOT NULL
);

/*
Creamos una tabla en la que estableceremos la relación muchos a muchos
Se establecen las dos llaves primarias de las tablas que se van a relacionar
*/
CREATE TABLE users_languages(
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES companies(user_id),
    FOREIGN KEY(language_id) REFERENCES companies(language_id),
    UNIQUE(user_id, language_id)
);


