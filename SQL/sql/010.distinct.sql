-- distinct: quita duplicados, devuelve valores únicos
use sakila;
select * from actor;

select first_name from actor; -- 200
select first_name from actor order by first_name;
select distinct first_name from actor; -- 128

-- cuántos años tenemos películas

select distinct release_year from film;