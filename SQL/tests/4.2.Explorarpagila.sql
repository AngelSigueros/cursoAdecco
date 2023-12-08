
-- Explorar tablas
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name = 'WAHLBERG' order by first_name desc;
select concat(first_name, ' - ', last_name) Nombre, first_name Fisrt, last_name Last from actor;
select count(last_name) Last, last_name from actor group by last_name;
select count(last_name) Last, last_name from actor group by last_name having Last between 2 and 3 order by Last desc;

SELECT * FROM address;
SELECT * FROM address WHERE not district = 'California';
SELECT * FROM address WHERE district != 'California' order by district;
SELECT * FROM address WHERE district = 'California' AND postal_code = '17886';
SELECT * FROM address WHERE district = 'California' AND postal_code = '17886' OR postal_code = '2299';
SELECT * FROM address WHERE postal_code = '17886' OR postal_code = '2299';
select district from address;
select distinct district from address;
SELECT * FROM address WHERE address2 in ('');
SELECT * FROM address WHERE address2 is null;

-- group by
select count(district) total, district from address group by district order by district;

select c.last_name, count(p.payment_id) Total
from customer c, payment p
where c.customer_id = p.customer_id
group by c.last_name;

select c.last_name, sum(p.payment_id) Pagos, count(p.payment_id) Total, avg(p.payment_id) Media
from customer c, payment p
where c.customer_id = p.customer_id
group by c.last_name;

-- joins
select first_name, last_name, address, city, country 
from customer cu, address ad, city ci, country co 
where cu.address_id = ad.address_id
and ad.city_id = ci.city_id
and ci.country_id = co.country_id;

SELECT * FROM category;
SELECT * FROM category WHERE name = 'Action';

SELECT * FROM city;
SELECT * FROM city WHERE city = 'Akron';
SELECT * FROM city WHERE city LIKE 'A%';

SELECT * FROM country;
SELECT * FROM country WHERE country = 'Spain' or country = 'France';
SELECT * FROM country WHERE country in ('Spain', 'France', 'Germany');

SELECT * FROM customer;
SELECT * FROM customer WHERE last_name = 'WILLIAMS';
SELECT * FROM customer WHERE activebool = FALSE;
SELECT * FROM customer WHERE activebool = TRUE;

UPDATE customer SET activebool = FALSE WHERE customer_id = 1;
UPDATE customer SET activebool = TRUE WHERE customer_id = 1;

SELECT * FROM film;
SELECT * FROM film WHERE description = 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies';
SELECT * FROM film WHERE description LIKE '%Drama%';

SELECT * FROM film_actor;
SELECT * FROM film_actor WHERE film_id = 1;
SELECT * FROM film_actor WHERE actor_id = 1;
select count(a.actor_id) Actores, f.title
from film f, actor a, film_actor fa
where f.film_id = fa.film_id
and a.actor_id = fa.actor_id
group by f.title;

SELECT * FROM film_category;

SELECT * FROM inventory;
select count(i.film_id) Peliculas, f.title Titulo
from inventory i, film f
where i.film_id = f.film_id
group by Titulo;

select count(f.title) Titulo
from inventory i, film f
where i.film_id = f.film_id
and f.title = 'AGENT TRUMAN';

SELECT * FROM language;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM staff;
SELECT * FROM store;

-- insertar datos
select * from actor;

INSERT INTO actor (first_name, last_name) VALUES ('ALAN', 'SASTRE');


SELECT * FROM customer;
SELECT * FROM address;
SELECT * FROM store;

INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('Calle falsa', 'Nueva América', 300, '28004', '12334354352');

-- address 606

INSERT INTO customer(store_id, first_name, last_name, email, address_id, activebool, create_date)
VALUES (1, 'CUSTOMER NEW', 'LASTNAME EXAMPLE', 'customernew@company.com', 606, TRUE, '2021-12-1');

-- Sub queries

select title, language_id from film 
where language_id = (select language_id from language where name='English');

select title, language_id from film 
where language_id IN (select language_id from language where name in ('English', 'Italian', 'French', 'German'))
order by language_id desc;

select * from language;
select * from inventory;
select * from rental;
select * from film;

select * from inventory i, rental r, film f
where r.inventory_id = i.inventory_id
and i.film_id = f.film_id;

select * from inventory i, rental r, film f
where r.inventory_id = i.inventory_id
and i.film_id = f.film_id

-- inner join de imagen

