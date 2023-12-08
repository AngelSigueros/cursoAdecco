
-- Order 1 columna ASC, DESC
use sakila;
select * from payment;

select * from payment order by amount; -- ASC ascendente es de menos a más
select * from payment order by amount ASC;
select * from payment order by amount DESC; -- DESC descendente es de más a menor
-- select * from payment order by amount where amount > 4; -- incorrecto primero va where
select * from payment where amount > 3 order by amount ASC;

select * from payment where staff_id = 1 order by amount ASC;

-- Order 2 columnas

select * from payment order by amount, staff_id;
select * from payment order by amount, staff_id ASC;

select * from payment order by amount DESC, staff_id DESC;

select * from payment order by amount DESC, staff_id ASC;


-- Order por fecha
select * from payment order by payment_date;
select * from payment order by payment_date DESC;

-- Order por texto
select * from customer;
select * from customer order by last_name; -- A a Z
select * from customer order by last_name DESC; -- Z a A

Select * from customer order by last_name, first_name DESC;
