-- CREAR UNA BASE DE DATOS
CREATE DATABASE intro_to_sql;

USE intro_to_sql;

SHOW tables;



CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NULL,
    apellido VARCHAR(50) NULL,
    email VARCHAR(50) NOT NULL,
    biografia MEDIUMTEXT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (email)
);

CREATE TABLE telefonos (
    id INT NOT NULL AUTO_INCREMENT,
    numero_telefono VARCHAR(100) NOT NULL, 
    users_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN  KEY (users_id) REFERENCES users(id)
);


INSERT INTO users (nombre, apellido, email, biografia) VALUES ('Luis', 'Rodriguez', 'lrodriguez@4geeks.co', "Instructor 4Geeks");
INSERT INTO users (nombre, apellido, email, biografia) VALUES ('Jose', 'Perez', 'jperez@gmail.com', "Alumno 4Geeks");


SELECT id, nombre, apellido FROM users;
SELECT * FROM users;


UPDATE users SET biografia="Instructor 4Geeks / Fullstack Developer" WHERE id=1;

INSERT INTO telefonos (numero_telefono, users_id) VALUES ('555-55-55', (SELECT id FROM users WHERE email='lrodriguez@4geeks.co'));


DELETE FROM telefonos WHERE users_id = 2;
 