
-- Limit
use world;

select * from city;

select * from city order by Population DESC;

select * from city order by Population DESC LIMIT 10;

-- top 10 países (country) de mayor SurfaceArea
select * from country order by SurfaceArea DESC LIMIT 15;
-- top 10 países (country) de mayor Population
select * from country order by Population DESC LIMIT 15;

-- Paginación, 20 primeros, 20 segundos, 20 terceros, 20 cuartos elementos

-- opcion 1: primero va el offset y luego el limit cuando se pone 2 números
-- PRIMERA PAGINA
select * from country order by Population DESC LIMIT 20; -- de 1 a 20
-- SEGUNDA PAGINA
select * from country order by Population DESC LIMIT 20, 20; -- de 21 a 40
-- TERCERA PAGINA
select * from country order by Population DESC LIMIT 40, 20; -- de 21 a 40

-- opcion 2: utilizando palabra OFFSET
-- PRIMERA PAGINA
select * from country order by Population DESC LIMIT 20; -- de 1 a 20
-- SEGUNDA PAGINA
select * from country order by Population DESC LIMIT 20 OFFSET 20; -- de 21 a 40
-- TERCERA PAGINA
select * from country order by Population DESC LIMIT 20 OFFSET 40; -- de 41 a 60

