create database MotoCoder;

CREATE TABLE fabricantes (
fabricante_id int not null primary key auto_increment,
fabricante_nombre varchar(45) unique,
fabricante_pais varchar(45)
);

INSERT INTO fabricantes (fabricante_nombre, fabricante_pais)
VALUES
("Yamaha", "Japan"),
("Honda", "Japan"),
("Kawazaki", "Japan"), 
("Benelli", "China"),
("CF Moto", "China"),
("Harley Davison", "US"),
("Suzuki", "Japan"),
("KTM", "Austria"),
("Zontes", "China"),
("Voge", "China"),
("American Eagle", "US"),
("Royal Enfield", "India"),
("Triumph", "England"),
("Bajaj", "India"),
("Ducatti", "Italy"),
("Moto Guzzi", "Italy"),
("Aprilia", "Italy");

SELECT * FROM fabricantes;

CREATE TABLE clientes (
	cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_nombre VARCHAR(30) NOT NULL,
    cliente_apellido VARCHAR(40) NOT NULL,
    cliente_mail VARCHAR(100) UNIQUE DEFAULT NULL,
    telefono VARCHAR (20) UNIQUE DEFAULT NULL,
    nacionalidad VARCHAR (30) DEFAULT "Argentina"
);

ALTER TABLE clientes
ADD COLUMN cliente_dni varchar(10) unique;

ALTER TABLE clientes
MODIFY COLUMN cliente_dni bigint unique;

ALTER TABLE clientes
MODIFY COLUMN cliente_dni int unique;

INSERT INTO clientes (cliente_nombre, cliente_apellido, cliente_mail, cliente_dni)
VALUES
("German", "Perez", "gperez@gmail.com", 156845),
("Tomas", "Lopez", "tlopez@gmail.com", 456123),
("Lautaro", "Fernandez", "lfernandez@gmail.com", 568126),
("Federico", "Saez", "fsaez@gmail.com", 526856 ),
("Francisco", "Diaz", "fdiaz@gmail.com", 456583 ),
("Lucas", "Gutierrez", "lgutierrez@gmail.com", 567835 ),
("Melanie", "Chavez", "mchavez@gmail.com", 546813 ),
("Luciana", "Vilar", "lvilar@gmail.com", 545686 ),
("Florencia", "Gallo", "fgallo@gmail.com", 984565),
("Carolina", "Gallo", "cgallo@gmail.com", 456826);

SELECT * FROM clientes;

CREATE TABLE motos_categorias(
categoria_id int unique primary key auto_increment,
categoria_descripción varchar(50)
);

INSERT INTO motos_categorias(categoria_descripción)
VALUES
("Naked"),
("Sport"),
("Enduro"),
("Scooter"),
("Trail"),
("Custom");

SELECT * FROM motos_categorias;

SELECT * FROM clientes;

SELECT * FROM motos_modelos;




