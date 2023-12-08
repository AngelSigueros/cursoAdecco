use sakila;

-- select de customer con sus respectivos address, street

select * from customer;
select * from address;

-- first_name, email, address, district
select * from customer 
join address on customer.address_id = address.address_id;

select first_name, email, address, district 
from customer join address on customer.address_id = address.address_id;

select c.first_name, c.email, a.address, a.district 
from customer c join address a on c.address_id = a.address_id;

-- 2 joins customer con address y city en un mismo SELECT
select cu.email, a.address, ci.city
from customer cu
join address a on cu.address_id = a.address_id
join city ci on a.city_id = ci.city_id;

select *
from customer cu
join address a on cu.address_id = a.address_id
join city ci on a.city_id = ci.city_id
join country co on ci.country_id = co.country_id;

select *
from customer
join address on customer.address_id = address.address_id
join city on address.city_id = city.city_id
join country on city.country_id = country.country_id;

select customer.email, address.address, city.city, country.country
from customer
join address on customer.address_id = address.address_id
join city on address.city_id = city.city_id
join country on city.country_id = country.country_id;




