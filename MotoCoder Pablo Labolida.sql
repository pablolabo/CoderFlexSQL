create database if not exists coderhouse;
use coderhouse;

CREATE TABLE alumnos (
	id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    email VARCHAR(100) UNIQUE DEFAULT NULL,
    dni INT UNIQUE NOT NULL,
    telefono VARCHAR (20) UNIQUE DEFAULT NULL,
    nacionalidad VARCHAR (30) DEFAULT "Argentina"
);

INSERT INTO alumnos (nombre, apellido, email, dni, telefono)
VALUES
("Pablo", "Labolida", "palabolida@gmail.com", 41078262, "1169083105");

alter table alumnos add column fecha_inscripción datetime default current_timestamp;

SELECT * FROM alumnos;

drop table alumnnos;

SELECT * from clientes;

