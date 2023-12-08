-- Group by: agrupa datos por una o varias columnas 
-- utilizando para agrupar una función de agregación (count, sum, avg, max)
use world;

select * from country;

-- Contar el número de paises de cada continente
select Continent, count(*) as num_paises from country group by Continent;

-- Suma de población en los países agrupados por continente
select Continent, sum(Population) as poblacion from country group by Continent;

-- esperanza de vida media (MEDIA) LifeExpectancy agrupado por continente
SELECT Continent, 
round(avg(LifeExpectancy), 2) as esp_vida_media 
FROM COUNTRY 
GROUP BY Continent;

-- esperanza de vida media (MEDIA) LifeExpectancy agrupado por región
SELECT Region, 
round(avg(LifeExpectancy), 2) as esp_vida_media 
FROM COUNTRY 
GROUP BY Region
ORDER BY avg(LifeExpectancy) DESC; -- desc

-- número de idiomas por país countrylanguage
select * from countrylanguage;

select CountryCode, COUNT(Language) from countrylanguage group by CountryCode;
-- ESP 4
-- EST 5 

-- filtro sobre una agrupación con having
--  número de idiomas por país countrylanguage pero filtrando por solo 
-- los que tengan más de 5 idiomas

select CountryCode, COUNT(Language) 
from countrylanguage 
group by CountryCode
having COUNT(Language) > 5;


-- SAKILA GROUP BY 

use sakila;
-- duración media length agrupada por rating en tabla film 
-- filtrando entre una lista de ratings ('PG', 'G', 'R')
-- filtrando por length medio >= 100
select * from film;

select rating, avg(length) as duracion_media FROM film group by rating;

select rating, avg(length) as duracion_media 
FROM film 
WHERE rating = 'R' OR rating = 'PG' OR rating = 'G'
group by rating having duracion_media >= 100;

select rating, avg(length) as duracion_media 
FROM film 
WHERE rating IN ('R', 'PG', 'G')
group by rating having duracion_media >= 100;



