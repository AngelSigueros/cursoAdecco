SELECT * FROM sakila.actor;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.address;
SELECT * FROM sakila.city;

select address, email, district
from address a, city c, customer cu
where a.city_id = c.city_id
and a.address_id = cu.address_id;


select address, email from address a
join customer cu on a.address_id = cu.address_id;


select address, email, district, city, country from address a
join city c on a.city_id = c.city_id
join customer cu on a.address_id = cu.address_id
join country co on co.country_id = c.country_id
where c.city = 'Kabul';
