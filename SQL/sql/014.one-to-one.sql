-- crear base de datos one_to_one
DROP SCHEMA IF EXISTS one_to_one;
CREATE SCHEMA one_to_one;
USE one_to_one;

-- Crear tabla address
CREATE TABLE address (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(250) NOT NULL,
    postal_code VARCHAR(5),
    city VARCHAR(50)
);

-- Crear tabla users
CREATE TABLE `users` (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    id_address INT UNIQUE, -- retricción de unicidad
    FOREIGN KEY (id_address) REFERENCES address(id)
);

INSERT INTO address (street, postal_code, city) VALUES 
('calle falsa 123', '28003', 'Madrid'),
('calle verdadera 123', '48003', 'Sevilla')
;
select * from address;

-- Error Code: 1062. Duplicate entry '1' for key 'users.id_address'
-- no deja guardar por la restricción one to one
INSERT INTO users (first_name, last_name, email, id_address) VALUES
('user 1', 'apellido1', 'u1@email.com', 1),
('user 2', 'apellido2', 'u2@email.com', 1) -- address 1 ya está ocupado por otro usuario
;

INSERT INTO users (first_name, last_name, email, id_address) VALUES
('user 1', 'apellido1', 'u1@email.com', 1),
('user 2', 'apellido2', 'u2@email.com', 2) -- address 2 no está ocupado
;
select * from users;

TRUNCATE address; -- no deja hacer truncate debido a integridad referencial
SET SQL_SAFE_UPDATES = 0;
DELETE FROM address;
TRUNCATE users;

-- restricción UNIQUE y FOREIGN KEY para garantizar one to one
