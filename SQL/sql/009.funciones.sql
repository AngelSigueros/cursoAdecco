-- Funciones
use sakila;

-- count()
select * from customer;
select count(*) from customer;

-- utilizando un alias
select customer_id as id from customer;
select count(*) as num_customers from customer;

-- LA COLUMNA id ES OBLIGATORIA Y ÚNICA, SIEMPRE TIENE VALOR, COUNT CONTARÁ TODAS LAS FILAS
select count(customer_id) as num_customer from customer; -- 602

-- LA COLUMNA email ES OPCIONAL, SI TIENE NULL ENTONCES COUNT NO CONTARÁ ESA FILA
select count(email) as num_customer from customer; -- 601 no cuenta los NULL


-- sum()
-- sumar todos los clientes active, dame los usuarios activos
select * from customer;
select sum(`active`) as num_active_customers from customer; -- probar a poner uno a 0 y ver como disminuye

select count(*) as total, sum(`active`) as total_active from customer;

SELECT 
count(*) AS total, 
sum(`active`) AS total_active, 
count(*) - sum(`active`) AS total_inactive 
FROM customer;

-- sumar todos los amount de payments
SELECT * FROM payment;
SELECT count(payment_id) as num_payments FROM payment; -- 16k numero de transacciones
SELECT sum(amount) FROM payment; -- 67 k



-- avg: Average, calcula la media

-- Ej 1: avg sobre amount en payment
SELECT SUM(amount) / COUNT(*) as avg_amount from payment;
SELECT avg(amount) as avg_amount from payment;
SELECT round(avg(amount), 2) as precio_medio FROM payment;

-- Ej 2: avg sobre length en film
select * from film;
SELECT avg(`length`) as duracion_media from film;
SELECT round(avg(`length`), 0) as duracion_media from film;

-- min: obtener el valor mínimo
select * from film;
SELECT min(`length`) as min_duration FROM film; -- 46

-- max: obtener el valor máximo
select * from film;
SELECT max(`length`) as max_duration FROM film; -- 185

-- year y date: extraer el año a partir de una fecha
-- Ej 1 sobre create_date de customer
select * from customer;

select 
year(create_date) as `año`, 
month(create_date) as `num_mes`, -- 1 a 12
monthname(create_date) as `nombre_mes`,
week(create_date) as `semana`, -- 1 a 52
dayofyear(create_date) as `dia_año`, -- 1 a 365
dayofmonth(create_date) as `dia_mes`, -- 1 a 31
dayofweek(create_date) as `dia_semana` -- 1 a 7
from customer;

-- Ej 2 sobre payment_date de payment
select 
payment_date as `fecha_original`,
date(payment_date) as `fecha_sin_tiempo`,
year(payment_date) as `año`, 
month(payment_date) as `num_mes`, -- 1 a 12
monthname(payment_date) as `nombre_mes`,
week(payment_date) as `semana`, -- 1 a 52
dayofyear(payment_date) as `dia_año`, -- 1 a 365
dayofmonth(payment_date) as `dia_mes`, -- 1 a 31
dayofweek(payment_date) as `dia_semana` -- 1 a 7
from payment;

-- concat, length, upper, lower
select * from customer;

select concat(first_name, '_', last_name) as full_name from customer;

select first_name, length(first_name) as `longitud` from customer;

select lower(first_name) as `nombre`, length(first_name) as `longitud` from customer;

-- ordenar desc por longitud nombre
select 
first_name, 
length(first_name) as `longitud` 
from customer 
order by length(first_name) desc;

-- distinct

-- Group by