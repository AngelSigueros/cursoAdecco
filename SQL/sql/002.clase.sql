
USE sakila;

show databases;

show tables;

SELECT * FROM customer;
SELECT email FROM customer;
SELECT first_name, last_name FROM customer;

select * from payment; 

SELECT * FROM payment WHERE staff_id = 2;

SELECT * FROM sakila.actor;

SELECT * FROM actor WHERE actor_id = 5;

SELECT * FROM actor WHERE actor_id < 5; 

-- payment amount menores que 5 euros: 
SELECT * FROM payment WHERE amount < 5;
-- payment amount mayores que 10 euros: 
SELECT * FROM payment WHERE amount > 10;
-- payment amount entre 5 y 10 euros
SELECT * FROM payment WHERE amount >= 5 AND amount <= 10;
SELECT * FROM payment WHERE amount BETWEEN 5 AND 10; -- incluye 5 y 10
SELECT * FROM payment WHERE payment_date BETWEEN '2005-07-01' AND '2005-07-15';

-- operador OR customer
SELECT * FROM address WHERE district = "california" OR district = 'Nagasaki';

-- Filtrar address que contengan la palabra Avenue
-- LIKE
select * from address WHERE address LIKE '%Aurora'; -- 0
select * from address WHERE address LIKE '%Aurora%'; -- 1
select * from customer where first_name LIKE 'A%'; -- 44
select * from customer where email LIKE '%@gmail.com';
select * from customer where email NOT LIKE '%@sakilacustomer.org';

-- INSERT
INSERT INTO customer 
(`store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) 
VALUES ('3', 'dhkjfsh', 'dfsjfdh', 'skjdhfkjsdf@gmail.com', '605', '1');

SELECT * FROM city;
select * from country where country = 'Spain';
INSERT INTO city (city, country_id) VALUES('León', 87);
INSERT INTO city VALUES (602, 'Madrid', 87, '2023-01-01');

SELECT * FROM film;
show columns from film;
-- INSERT manualmente en film una nueva fila especificando columnas
insert into film 
(title, language_id, rental_duration, rental_rate, replacement_cost)
VALUES 
('ejemplo title', 1, 5, 2.99, 18.99);

-- INSERT manual de filas nuevas en la tabla staff
-- BLOB Binary Large Object se usa normalmente para guardar imagen, audio, pdf, archivos, formato binario
use `sakila`;
SELECT * FROM staff;
show columns from staff;
-- NULLABLE YES significa opcional, NULLABLE NO significa obligatorio
-- staff empleado
select * from address;
select * from store;

-- Insertar 1 una fila
INSERT INTO `staff`(
`first_name`, `last_name`, `address_id`, `store_id`, `username`
) VALUES (
'John', 'Marmolejo', 100, 1, 'john'
);
-- Insertar varias filas a la vez:
INSERT INTO `staff`(
`first_name`, `last_name`, `address_id`, `store_id`, `username`
) VALUES 
('Johana', 'Macías', 100, 1, 'johana'),
('Ángel', 'Sanz', 100, 1, 'angel_sanz'),
('Deivi', 'Veliz', 100, 1, 'deivi_veliz'),
('Jawad', 'Ahmad', 100, 1, 'jawad_ahmand')
;

-- Generar datos con mockaroo
select * from `language`;
show columns from `language`;

insert into language (name) values ('Dari');
insert into language (name) values ('Danish');
insert into language (name) values ('Armenian');
insert into language (name) values ('Nepali');
insert into language (name) values ('Marathi');
insert into language (name) values ('Italian');
insert into language (name) values ('Georgian');
insert into language (name) values ('Swati');
insert into language (name) values ('Dzongkha');
insert into language (name) values ('Telugu');


insert into `language` (name) values ('Māori');
insert into `language` (name) values ('Hiri Motu');
insert into `language` (name) values ('Icelandic');
insert into `language` (name) values ('Belarusian');
insert into `language` (name) values ('Kashmiri');
insert into `language` (name) values ('Albanian');
insert into `language` (name) values ('Lithuanian');
insert into `language` (name) values ('Tetum');
insert into `language` (name) values ('Somali');
insert into `language` (name) values ('Romanian');

-- mockaroo crear nueva tabla
create table products (
	id BIGINT NOT NULL AUTO_INCREMENT , -- clave primaria autogenerada INT, BIGINT
	title VARCHAR(50),
	price DECIMAL(5,2),
	`release` DATE,
    PRIMARY KEY (`id`) -- PRIMARY KEY AÑADE AUTOMATICAMENTE UNIQUE
);
select * from products;
insert into products (id, title, price, `release`) values (1, 'Samosa - Veg', 75.41, '2022-12-25');
insert into products (id, title, price, `release`) values (2, 'Energy - Boo - Koo', 24.63, '2023-05-10');
insert into products (id, title, price, `release`) values (3, 'Crab - Meat', 88.66, '2023-11-04');
insert into products (id, title, price, `release`) values (4, 'Mushroom - Lg - Cello', 81.67, '2023-09-12');
insert into products (id, title, price, `release`) values (5, 'Juice - Orange, 341 Ml', 7.44, '2023-06-10');
insert into products (id, title, price, `release`) values (6, 'Eel - Smoked', 12.0, '2023-02-02');
insert into products (id, title, price, `release`) values (7, 'Dill Weed - Dry', 32.92, '2023-09-13');
insert into products (id, title, price, `release`) values (8, 'Beef Striploin Aaa', 11.86, '2023-06-12');
insert into products (id, title, price, `release`) values (9, 'Silicone Parch. 16.3x24.3', 95.84, '2022-11-04');
insert into products (id, title, price, `release`) values (10, 'Mints - Striped Red', 89.53, '2023-03-09');

select * from products;

-- UPDATE: actualizar filas existentes
-- Sin WHERE no deja actualizar por defecto ya que está activado el safe mode
SET sql_safe_updates = 0; -- false. Modo seguro desactivado.
UPDATE products SET price = 58.15;
SET sql_safe_updates = 1; -- true. Modo seguro activado. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 

-- La forma recomendable de actualizar es utilizando WHERE
UPDATE products SET price = 22.22 WHERE id = 8;

UPDATE products SET 
title = 'Beef Striploin Meat', 
price = 33.33
WHERE id = 8;

-- UPDATE price que contengan la palabra meat en el titulo
select * from products;
UPDATE products SET price = 44.55 WHERE title LIKE '%Meat%';

-- Operacion en UPDATE: reducir un 10 % el precio de los productos:
UPDATE products SET price = price * 0.90;
UPDATE products SET price = ROUND(price * 0.90, 2);
-- Operación en UPDATE: aumentar un 10% el precio de los productos:
UPDATE products SET price = ROUND(price * 1.10, 2);

-- Operacion UPDATE: sumar una cantidad a un precio:
UPDATE products SET price = price - 10;

-- UPDATE sobre film, crear 1 sentencia:
-- sumar 1 a release_year
-- rating lo cambie a R
--  a aquellas peliculas cuya length esté entre 50 y 80
select * from film;
SELECT * FROM film WHERE length BETWEEN 50 AND 80;

UPDATE film SET release_year = release_year + 1, rating = 'R' 
WHERE length BETWEEN 50 AND 80; 




-- DELETE
select * from `products`;
-- DELETE FROM `products`; -- Borrar todas las filas
DELETE FROM `products` WHERE `price` > 70; -- Borrar varios

DELETE FROM `products` WHERE id = 5; -- Borrar uno

TRUNCATE TABLE `products`; -- vaciar la tabla sin borrarla

-- DELETE FROM elimina todas las filas de la tabla una por una utilizando condiciones elaboradas

-- TRUNCATE TABLE borrado rápido y liberación de espacio, sin filtros ni registros

-- DROP TABLE borra la tabla completa, desaparece la tabla

DROP TABLE products;
DROP TABLE IF EXISTS products;

-- Todas las acciones deberían quedar registradas en logs
-- Ver my.ini o my.cnf

DROP DATABASE IF EXISTS demo1;


-- crear tabla alumnos y pasar lista
CREATE TABLE IF NOT EXISTS students (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL, -- OBLIGATORIO
    last_name VARCHAR(50), -- opcional
    email VARCHAR(50) NOT NULL UNIQUE, -- OBLIGATORIO, ÚNICO, NO PUEDE HABER DUPLICADOS
    country VARCHAR(30) DEFAULT 'Spain',
    age INT CHECK (age >= 18 AND age <= 150),
    class_date DATE, -- YYYY-MM-DD
    class_attendance TINYINT DEFAULT 1
);
INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('Eliane', 'Rubim', 'programando.lili@gmail.com', 'Brasil', '38', '2023-11-29', '1');
INSERT INTO students (first_name, last_name, email, country, age, class_date, class_attendance) VALUES ('JEHIEL', 'LINAREZ', 'jehiellnhs@gmail.com', 'venezuela', 31, '2023-11-29', 1);
INSERT INTO students (first_name, last_name, email, country, age, class_date, class_attendance) VALUES ('FRAN', 'RAMIREZ', 'franramirez@gmail.com', 'Spain', 18, '2023-11-29', 1);
INSERT INTO `students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_attendance`) VALUES ('SAUL', 'PEÑA', 's@gmail.com', 'SD', '30', '1');
INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('johnny', 'nasato', 'johnse@gmail.com', 'uganda', '19', '2023-11-29', '1');
INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('Silvia', 'sanchez', 'silviasanchez@gmail.com', 'colombia', '31', '2023-11-29', '1');
INSERT INTO students ( first_name, last_name, email, country, age, class_date, class_attendance) VALUES ( 'Javier', 'Baeza-Rojano Ossorio', 'jabaroosss@gmail.com', 'Spain', 52 , '2023-11-29', 1);
select * from students;

insert into students (first_name, last_name, email, class_date, class_attendance)
values ('Angel', 'Sanz', 'asc7es@gmail.com', '2023-11-29',1);

INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('Carlos', 'Feliz',
'Carlos@gmail.com', 'España', '29', '2023-11-29', '1');

insert into sakila.students
(first_name, last_name, email) value ('Juan Pablo', 'Barrero' ,'juanpablobarrerovazquez@gmail.com');

insert into students (first_name, last_name, email, age, class_date, class_attendance) values ('Aitor', 'Pérez de Heras', 'yosoytotu@gmail.com', 46, '2023-11-29', 1);

insert into students(first_name, last_name, email, country, age, class_date, class_attendance)
values ('JUDITH','BLANDIN','YBLAN2GMAIIL.COM','SD',33,'1');

INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('Yessenia', 'Cherrez', 'yesseniacherrezh@hotmail.es', 'Ecuador', '47', '2023-11-29', '1');


INSERT INTO students (first_name, last_name, email, country, age, class_date, class_attendance) VALUES ('Carlos', 'Feliz','Carlos@gmail.com', 'España', '29', '2023-11-29', '1');

-- TODO rehacer con clave primaria compuesta a futuro






