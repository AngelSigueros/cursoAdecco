-- Retos

-- Reto 1

-- Crear una base de datos para una empresa

create database empresa;
use empresa;

-- Datos de productos. Los productos tienen un nombre, un código de producto, un
-- precio, una descripción y estarán agrupados por secciones. Cada sección tiene un
-- nombre y un representante

create table seccion (
seccion_id int not null auto_increment primary key,
nombre varchar(25) not null,
representante  varchar(25) not null
);

create table producto (
producto_id int not null auto_increment primary key,
nombre varchar(25) not null,
precio int not null,
descripcion varchar(100),
seccion_id int,
foreign key (seccion_id) references seccion(seccion_id)
);


-- La empresa vende a clientes que estarán registrados dentro de
-- la base de datos. Para cada cliente se registra su nombre, dni, edad, dirección y
-- teléfono

create table cliente (
cliente_id int not null auto_increment primary key,
nombre varchar(25) not null,
dni varchar(9) unique not null,
edad int,
direccion varchar(50),
telefono int
);

-- Cada vez que se vende un producto la venta se registra en la
-- base de datos. Se deberá registrar el producto vendido y a que cliente se ha
-- realizado la venta, además de las unidades del mismo (en una misma venta un
-- cliente puede comprar varias unidades de un producto) y la fecha de dicha venta.

create table venta (
venta_id int not null auto_increment primary key,
unidades int,
fecha_venta datetime,
producto_id int,
cliente_id int,
foreign key (producto_id) references producto (producto_id),
foreign key (cliente_id) references cliente (cliente_id)
);



-- Reto 2


drop database if exists videoclub;
create database videoclub;
use videoclub;
create table cliente(
dni varchar(10) not null,
nombre varchar(20) not null,
direccion varchar(50),
telefono varchar(10) not null,
constraint PK_cliente primary key(dni)
);
create table factura(
codi_factura int auto_increment,
fecha date not null,
importe float not null,
dni char(10),
check( importe>0),
constraint PK_factura primary key(codi_factura),
constraint FK_factura_dni foreign key(dni) references cliente(dni) on
update cascade on delete cascade
);
create table detallefactura(
codi_factura int not null,
linea_factura int not null auto_increment,
descripcion varchar(50) not null,
precio_unitario float not null,
numero_unidades int not null,
constraint precio_unidad check ( precio_unitario >0),
constraint cantidad_unidades check ( numero_unidades > 0),
constraint PK_detallefactura primary key(linea_factura),
constraint FK_detallefactura_factura foreign key(codi_factura)
references factura(codi_factura) on update cascade on delete cascade
);
create table actor(
codi_actor int auto_increment,
nombre varchar(20) not null,
constraint PK_actor primary key(codi_actor)
);
create table genero(
codi_genero int auto_increment,
descripcion varchar(50) not null,
constraint PK_genero primary key(codi_genero)
);
create table pelicula(
codi_pelicula int not null auto_increment,
titulo varchar(30) not null,
codi_genero int not null,
segunda_parte int,
codi_actor int not null,
constraint PK_pelicula primary key(codi_pelicula),
constraint FK_pelicula_segundaParte foreign key(segunda_parte)
references pelicula(codi_pelicula) on update cascade on delete cascade,
constraint FK_pelicula_codiGenero foreign key (codi_genero) references
genero(codi_genero) on update cascade on delete cascade,
constraint FK_pelicula_codiActor foreign key(codi_actor) references
actor(codi_actor) on update cascade on delete cascade
);
create table interpretada(
codi_pelicula int not null,
codi_actor int not null,
constraint PK_interpretada primary key(codi_pelicula, codi_actor),
constraint FK_interpretada_codiPeli foreign key(codi_pelicula)
references pelicula(codi_pelicula) on update cascade on delete cascade,
constraint FK_interpretada_codiActor foreign key(codi_actor) references
actor(codi_actor) on update cascade on delete cascade
);
create table copia(
codi_pelicula int not null,
codi_copia int not null auto_increment,
constraint PK_copia primary key(codi_copia),
constraint FK_copia_codiPelicula foreign key(codi_pelicula) references
pelicula(codi_pelicula) on update cascade on delete cascade
);
create table prestamo(
codi_pelicula int not null,
codi_copia int not null,
fecha date not null,
dni char(10) not null,
constraint PK_prestamo primary key( codi_pelicula, codi_copia, fecha),
constraint FK_prestamo_codiPelicula foreign key(codi_pelicula)
references pelicula(codi_pelicula) on update cascade on delete cascade,
constraint FK_prestamo_codiCopia foreign key(codi_copia) references
copia(codi_copia) on update cascade on delete cascade,
constraint FK_prestamo_dni foreign key(dni) references cliente(dni) on
update cascade on delete cascade
);

Alter table factura auto_increment=1001;
Alter table detallefactura auto_increment=2001;
Alter table actor auto_increment=3001;
Alter table genero auto_increment=4001;
Alter table pelicula auto_increment=5001;
Alter table copia auto_increment=6001;


-- Inserts

INSERT INTO `pelicula` (`codi_pelicula`, `codi_genero`, `titulo`, codi_actor, `segunda_parte`) VALUES
(1, 2, 'El Capitan América', 1, null),
(2, 8, 'Tonto y Retonto', 2, null),
(3, 8, 'La Redada', 3, null),
(4, 15, 'Gato con Botas', 4, 1),
(6, 5, 'Soldado universal', 5, 2),
(8, 11, 'Rescatando al Soldado Ryan', 5, 3),
(12, 6, 'Terminator 2', 5, null),
(17, 6, 'LA PASÍON DE CRISTO', 1, 4);


INSERT INTO `cliente` (`nombre`, `telefono`, `direccion`, `dni`) VALUES
('PENNISI', '4584463', 'PROVINCIAS UNIDAS 921 BIS', '29415803'),
('ANIDUZZI', '152203458', 'PROVINCIAS UNIDAD 921 BIS', '37525717'),
('PENNISI', '3414592446', 'POLONIA 1440', '51587903'),
('CORDA', '13478900', 'CORRIENTES 567', '12525885'),
('MANUEL', '14325678', 'POLONIA 1440', '28765340'),
('GEREAD', '13478900', 'puig roig 8 ', '24322674');


INSERT INTO `genero` (`codi_genero`, `descripcion`) VALUES
(1, 'acción'),
(2, 'animación'),
(3, 'artes marciales'),
(4, 'aventura'),
(5, 'bélico'),
(6, 'biográficas'),
(7, 'ciencia ficción'),
(8, 'comedia'),
(9, 'dibujos animados'),
(10, 'documentales'),
(11, 'drama'),
(12, 'erótico'),
(13, 'fantasía'),
(14, 'histórico'),
(15, 'infantil'),
(16, 'intriga'),
(17, 'musical'),
(18, 'oeste'),
(19, 'policíaca'),
(20, 'porno'),
(21, 'religioso'),
(22, 'romántico'),
(23, 'terror'),
(24, 'clásicas'),
(25, 'guerra'),
(26, 'drama general'),
(27, 'drama suspenso'),
(28, 'animación computarizada'),
(29, 'drama romance'),
(30, 'horror'),
(31, 'drama comedia'),
(32, 'drama político'),
(33, 'suspenso'),
(34, 'Gangster’s'),
(35, 'Western'),
(36, 'deportes'),
(37, 'misterio'),
(38, 'drama judicial'),
(39, 'épica'),
(40, 'Thriller');


INSERT INTO `detallefactura` (`linea_factura`, `codi_factura`, `descripcion`, precio_unitario, `numero_unidades`) VALUES
(1, 1, 'El Capitan América', 110, 2),
(2, 2, 'Tonto y Retonto', 240, 3),
(3, 3, 'La Redada', 370, 5),
(4, 4, 'Gato con Botas', 420, 1),
(5, 6, 'Soldado universal', 550, 2),
(6, 8, 'Rescatando al Soldado Ryan', 575, 3),
(7, 12, 'Terminator 2', 580, 3),
(8, 17, 'LA PASÍON DE CRISTO', 139, 4);


INSERT INTO `prestamo` (`codi_pelicula`, `dni`, `fecha`, codi_copia) VALUES
(1, 12525885, '2023-01-10', 1),
(2, 24322674, '2023-01-11', 5),
(3, 28765340, '2023-01-12', 11),
(4, 28765340, '2023-01-10', 12),
(6, 29415803, '2023-01-11', 2),
(8, 37525717, '2023-01-12', 6),
(12, 37525717, '2023-01-10', 3),
(17, 37525717, '2023-01-11', 7);


INSERT INTO `interpretada` (`codi_pelicula`, `codi_actor`) VALUES
(2, 9),
(3, 10),
(4, 1),
(6, 2);

select * from actor;

-- 1. Lista de fechas e importes de las facturas, junto con el nombre y el teléfono del
-- cliente asociado.

select * from factura f, cliente c
where c.dni = f.dni;

SELECT factura.fecha, factura.importe
FROM factura
INNER JOIN cliente ON factura.dni = cliente.dni;

-- 2. Suma del importe de todas las facturas del día 25/11/2017.

select sum(importe) Suma from factura where fecha >= '2017-11-25';

-- 3. Lista de productos (descripcion) facturados en las facturas del cliente con NIF
-- 11111111A.

select * -- d.descripcion
from factura f, detallefactura d
where d.codi_factura = f.codi_factura
and f.dni = '37525717';

-- 4. Lista de los nombres de los clientes y títulos de las películas que éste tiene o
-- ha tenido en préstamo.

select * from cliente c, pelicula p, prestamo pr
where p.codi_pelicula = pr.codi_pelicula
and pr.dni = c.dni
and pr.fecha <= now();

-- 5. Lista donde aparezca, por cada cliente, el número de películas que tiene o ha
-- tenido en préstamo.

select pr.dni, c.nombre, count(pr.codi_pelicula) N_Peliculas 
from cliente c, prestamo pr
where pr.dni = c.dni
and pr.fecha <= now()
group by pr.dni;

SELECT pr.dni, c.nombre, COUNT(pr.codi_pelicula) AS N_Peliculas
FROM cliente AS c
JOIN prestamo AS pr ON pr.dni = c.dni
WHERE pr.fecha <= NOW()
GROUP BY pr.dni, c.nombre;

select p.dni, c.nombre, count(codi_pelicula) as numero_peliculas  
from prestamo as p 
join cliente as c on c.dni=p.dni 
group by p.dni;

-- 6. Lista donde aparezca, por el cliente con dni 22222222B, el número de películas
-- que tiene o ha tenido en préstamo.

select c.nombre, count(pr.codi_pelicula) N_Peliculas
from cliente c, prestamo pr
where pr.dni = c.dni
and pr.fecha <= now()
and c.dni = '37525717'
group by c.nombre;

-- 7. Lista del conjunto de actores principales de las películas que tenemos en el
-- videoclub. Si un actor ha sido actor principal de más de una película, sólo debe
-- aparecer una vez en la lista.

select nombre as Actor, count(p.codi_pelicula) N_Peliculas 
from actor a, interpretada p
where p.codi_actor = a.codi_actor
group by a.nombre;
-- having (N_Peliculas < 2);

select * from actor;

-- 8. Lista de todos los actores que interpretan alguna película del videoclub y que
-- no han sido actores principales de ninguna de estas películas.

select * from actor a, interpretada p
where a.codi_actor = p.codi_actor
and a.codi_actor NOT IN (select codi_actor from interpretada group by codi_actor);

select * from actor 
where codi_actor not in (select codi_actor from pelicula group by codi_actor);


-- 9. Lista de los títulos de las películas que son del género de terror.

select Lower(titulo), Upper(descripcion) from pelicula p, genero g
where p.codi_genero = g.codi_genero
and g.descripcion = 'Terror';

select * from pelicula;
select * from genero;

-- 10. Lista donde aparezcan las películas que tienen segundas partes, con el título
-- de la segunda parte asociada.

select titulo from pelicula where segunda_parte is not null;

select p.titulo as Primera_Parte, c.titulo as Segunda_Parte 
from pelicula p, (select titulo, codi_pelicula from pelicula where segunda_parte is not null) c
where c.codi_pelicula = p.codi_pelicula;
-- and p.segunda_parte is not null;

select titulo, count(*) from pelicula p
where segunda_parte is not null
group by titulo;

select * from cliente;
select * from pelicula;
select * from prestamo;

-- 11. Lista con el número de copias de cada película.

select p.titulo Titulo, count(c.codi_pelicula) Copias 
from pelicula p LEFT Join copia c
On p.codi_pelicula = c.codi_pelicula
group by p.titulo;

INSERT INTO `copia` (`codi_pelicula`, `codi_copia`) VALUES
(6, 9),
(8, 10),
(1, 11),
(1, 12);

select * from cliente;
truncate table copia;

-- 12. Lista de importes facturados por día ordenada de forma decreciente.

select sum(importe) Importe, fecha from factura
group by fecha
order by fecha desc;

INSERT INTO `factura` (`codi_factura`, `dni`, `fecha`, importe) VALUES
(1, 12525885, '2023-01-10', 10),
(2, 24322674, '2023-01-11', 20),
(3, 28765340, '2023-01-12', 30),
(4, 28765340, '2023-01-10', 40),
(6, 29415803, '2023-01-11', 50),
(8, 37525717, '2023-01-12', 50),
(12, 37525717, '2023-01-10', 50),
(17, 37525717, '2023-01-11', 10);

-- 13. Media de las facturas del día 25/11/2017, cuyo importante no sea inferior a 10
-- Euros.

select fecha, avg(importe) Media, max(importe) Max, min(importe) Min, sum(importe) Suma, count(importe) Todos 
from factura where importe >= 30
and fecha >= '2023-01-10'
group by fecha;

-- 14. El mínimo importe de la factura del día 26/11/2017 y a qué cliente le
-- corresponde.

-- select * from factura
select dni, min(importe) Min from factura
where fecha = '2023-01-10' 
group by dni; -- Limit 1;

-- 15. Crear una vista que contenga las facturas del cliente ‘11111111A

create view facturas_11111111A as
select * from factura where dni = '37525717';

select * from facturas_11111111A;



-- Reto 3


drop database if exists tienda;
create database tienda;
use tienda;
CREATE TABLE IF NOT EXISTS tienda(
id_tienda INT AUTO_INCREMENT,
propietario VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
direccion VARCHAR(100),
ciudad VARCHAR (20),
CIF VARCHAR(10),
CONSTRAINT PK_tienda PRIMARY KEY(id_tienda)
);

insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (8, 'Jana', 50, '126 Utah Plaza', 'Mekarsari', 401782655);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (79, 'Gabie', 10, '50 Center Center', 'Namur', 656443030);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (61, 'Devon', 67, '09510 Gateway Pass', 'Zarechnyy', 40849208);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (73, 'Jonie', 45, '05 Grim Terrace', 'L-Iklin', 692772260);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (20, 'Malanie', 45, '3 Briar Crest Drive', 'Riosucio', 140078482);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (46, 'Wilek', 19, '5 Vidon Court', 'Gandusari', 248722793);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (81, 'Lauralee', 5, '64 Mosinee Plaza', 'Apaga', 85846788);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (98, 'Fedora', 83, '40474 Carpenter Circle', 'Kishi', 661042026);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (62, 'Montgomery', 25, '138 Hermina Circle', 'Niedrzwica Duża', 521619208);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (97, 'Gerhardine', 22, '09738 Bartelt Hill', 'Al Marj', 130925750);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (21, 'Gaby', 43, '009 Mayfield Drive', 'Kudang', 474685561);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (95, 'Raynor', 6, '805 International Lane', 'Chalamarca', 984562503);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (85, 'Myrah', 1, '62 Wayridge Way', 'Saltsjöbaden', 309369258);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (62, 'Tomkin', 27, '77893 Hovde Pass', 'Liangjing', 949055465);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (7, 'Rhianna', 70, '7835 Anderson Terrace', 'Al Ain', 626476005);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (48, 'Magdaia', 97, '0727 Sundown Drive', 'Verkhniy Dashkesan', 83268311);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (32, 'Gloria', 58, '1 Oxford Terrace', 'Samangawah', 384426568);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (3, 'Ruthe', 57, '4453 Meadow Vale Center', 'Mbalmayo', 843155732);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (4, 'Loella', 100, '51 Delladonna Circle', 'Acomayo', 851052302);
insert into tienda (id_tienda, propietario, telefono, direccion, ciudad, cif) values (4, 'Barton', 84, '1 Express Terrace', 'Uptar', 31896363);

select * from tienda;

create table agente (
id_agente int auto_increment,
tienda int,
nombre varchar(50) not null,
apellidos varchar(50) not null,
telefono int not null,
direccion varchar(100),
dni varchar(10),
constraint PK_agente primary key(id_agente),
constraint FK_agente_tienda foreign key(tienda) references
tienda(id_tienda) on update cascade on delete cascade
);

select * from agente;

create table proveedor (
id_proveedor int auto_increment,
tienda int,
empresa varchar(50) not null,
propietario varchar(50) not null,
telefono int not null,
direccion varchar(100),
dni varchar(10),
constraint PK_proveedor primary key(id_proveedor),
constraint FK_proveedor_tienda foreign key(tienda) references
tienda(id_tienda) on update cascade on delete cascade
);
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`tienda`.`proveedor`, CONSTRAINT `FK_proveedor_tienda` FOREIGN KEY (`tienda`) REFERENCES `tienda` (`id_tienda`) ON DELETE CASCADE ON UPDATE CASCADE)

select * from proveedor;

create table cliente (
id_cliente int auto_increment,
tienda int,
SEmpNPart int not null default '0',
nombreEmp varchar(50) not null,
nombre varchar(50) not null,
apellidos varchar(50) not null,
telefono int not null,
direccion varchar(100),
dni_cif varchar(10),
constraint PK_cliente primary key(id_cliente),
constraint FK_cliente_tienda foreign key(tienda) references
tienda(id_tienda) on update cascade on delete cascade
);

select * from cliente;

create table venta (
id_venta int auto_increment,
cliente int,
agente int,
articulo varchar(50) not null,
cantidad int not null,
precio float not null,
fecha date not null,
constraint PK_venta primary key(id_venta),
constraint FK_venta_cliente foreign key(cliente) references
cliente(id_cliente) on update cascade on delete cascade,
constraint FK_venta_agente foreign key(agente) references
agente(id_agente) on update cascade on delete cascade
);

select * from venta;

-- 1

select * from proveedor;
select * from cliente;
select * from agente;
select * from tienda;
select * from venta;

-- 2

# filtrar las ventas desde junio 2012
select * from venta where fecha >= '2012/06/01';  

select * from venta v, cliente c, agente a, tienda t, proveedor p
where v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda;
-- and fecha >= '2023-03-15';

-- 3

create view Ventas2Semestre12 as
select articulo, cantidad, precio, fecha, nombreEmp, a.nombre, a.apellidos, t.propietario, empresa
from venta v, cliente c, agente a, tienda t, proveedor p
where v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda;

select * from Ventas2Semestre12;

-- 4

select nombre, apellidos from  Ventas2Semestre12
where apellidos = 'Veness';

-- 5

select articulo, cantidad, precio, cantidad*precio, fecha, nombreEmp, a.nombre, a.apellidos, t.propietario, empresa
from venta v, cliente c, agente a, tienda t, proveedor p
where round(v.precio * v.cantidad) > 12
-- and a.apellidos = 'Andre'
and v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda;

-- 6

select articulo, cantidad, precio, cantidad*precio, fecha, nombreEmp, a.nombre, a.apellidos, t.propietario, empresa
from venta v, cliente c, agente a, tienda t, proveedor p
where round(v.precio * v.cantidad) > 12
-- and a.apellidos = 'Andre'
and v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda
UNION
select articulo, cantidad, precio, cantidad*precio, fecha, nombreEmp, a.nombre, a.apellidos, t.propietario, empresa
from venta v, cliente c, agente a, tienda t, proveedor p
where -- round(v.precio * v.cantidad) > 12
a.apellidos = 'Andre'
and v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda;

-- 7

select articulo, cantidad, precio, fecha, nombreEmp, c.nombre, 
c.apellidos, a.nombre, a.apellidos, t.propietario, empresa, t.ciudad
from venta v, cliente c, agente a, tienda t, proveedor p
where c.nombre = 'Broddie'
and t.ciudad = 'Riosucio'
and v.cliente = c.id_cliente
and  v.agente = a.id_agente
and c.tienda = t.id_tienda
and p.tienda = t.id_tienda;



