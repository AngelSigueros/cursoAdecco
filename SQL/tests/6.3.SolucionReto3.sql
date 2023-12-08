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
constraint FK_factura_dni foreign key(dni) references cliente(dni) on update cascade on delete cascade	
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
constraint FK_detallefactura_factura foreign key(codi_factura) references factura(codi_factura) on update cascade on delete cascade	
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
constraint FK_pelicula_segundaParte foreign key(segunda_parte) references pelicula(codi_pelicula) on update cascade on delete cascade, 
constraint FK_pelicula_codiGenero foreign key (codi_genero) references genero(codi_genero) on update cascade on delete cascade, 
constraint FK_pelicula_codiActor foreign key(codi_actor) references actor(codi_actor) on update cascade on delete cascade
);

create table interpretada(
codi_pelicula int not null, 
codi_actor int not null, 
constraint PK_interpretada primary key(codi_pelicula, codi_actor), 
constraint FK_interpretada_codiPeli foreign key(codi_pelicula) references pelicula(codi_pelicula) on update cascade on delete cascade, 
constraint FK_interpretada_codiActor foreign key(codi_actor) references actor(codi_actor) on update cascade on delete cascade
);

create table copia(
codi_pelicula int not null, 
codi_copia int not null auto_increment, 
constraint PK_copia primary key(codi_copia), 
constraint FK_copia_codiPelicula foreign key(codi_pelicula) references pelicula(codi_pelicula) on update cascade on delete cascade
);

create table prestamo(
codi_pelicula int not null, 
codi_copia int not null, 
fecha date not null, 
dni char(10) not null, 
constraint PK_prestamo primary key( codi_pelicula, codi_copia, fecha), 
constraint FK_prestamo_codiPelicula foreign key(codi_pelicula) references pelicula(codi_pelicula) on update cascade on delete cascade, 
constraint FK_prestamo_codiCopia foreign key(codi_copia) references copia(codi_copia) on update cascade on delete cascade,
constraint FK_prestamo_dni foreign key(dni) references cliente(dni) on update cascade on delete cascade
);

# modificar cuando empieza el auto_incremental de esta forma luego puedo poner 0, en la zona de actores. 

Alter table factura auto_increment=1001;
Alter table detallefactura auto_increment=2001;
Alter table actor auto_increment=3001;
Alter table genero auto_increment=4001;
Alter table pelicula auto_increment=5001;
Alter table copia auto_increment=6001;

## INSERCIÓN DE LOS DATOS
insert into cliente values ('000000000X','Ángel Manuel Cruzado','República Argentine 42 28340 Valdemoro(Madrid)',620849487);
insert into cliente values ('111111111A','Maria Aparicio','La yedra 40 45800 Quintanar de la Orden (Toledo)', 620859486);
insert into cliente values ('222222222B','Roberto Ortega', 'Tenerias 49 45880 Corral de Almaguer (Toledo)', 620759485);
insert into cliente values ('333333333C','Saria Diaz',' Pablo Picaso 50 28320 Pinto (Madrid)', 620948496);
 
 insert into actor values (0,'Tom Haws');				
 insert into actor values (0,'Matt Damon');				
 insert into actor values (0,'Russell Crowe');			
 insert into actor values (0,'Brad Pitt');			
 insert into actor values (0,'Tom Cuise');				
 insert into actor values (0,'Morgan Freeman');				
 insert into actor values (0,'George Clonney');			
 

insert into genero values (0,'Accion');					
insert into genero values (0,'Ciencia Ficcion');		
insert into genero values (0,'Comedia');			
insert into genero values (0,'Drama');			
insert into genero values (0,'Documental');		
insert into genero values (0,'Misterio');			

insert into pelicula values (0,'Naufago',4004,null,3001);				
insert into pelicula values (0,'Seven',4004,null,3006);					
insert into pelicula values (0,'Ocean’s Eleven',4001,null,3004);					
insert into pelicula values (0,'Gladiator',4001,null,3003);				
insert into pelicula values (0,'Jason boure III',4001,null,3002);			
insert into pelicula values (0,'Jason Bourne II',4001,5005,3002);			
insert into pelicula values (0,'Jason Bourne I',4001,5006,3002);			
insert into pelicula values (0,'Mision Imposible',4001,null,3005);			



insert into copia values (5001,0);		#6001 - Naufrafo
insert into copia values (5001,0);		#6002 - Naufrago
insert into copia values (5002,0);		#6003 - Seven
insert into copia values (5002,0);		#6004 - Seven
insert into copia values (5003,0);		#6005 – Ocean’s Eleven
insert into copia values (5003,0);		#6006 – Ocean’s Eleven
insert into copia values (5004,0);		#6007 - Gladiator
insert into copia values (5004,0);		#6008 - Gladiator
insert into copia values (5005,0);		#6009 – Jason Bourne III
insert into copia values (5005,0);		#6010 – Jason Bourne III
insert into copia values (5006,0);		#6011 – Jason Bourne II
insert into copia values (5006,0);		#6012 – Jason Bourne II
insert into copia values (5007,0);		#6013 – Jason Bourne I
insert into copia values (5007,0);		#6014 – Jason Bourne I
insert into copia values (5008,0);		#6015 – misión Imposible

insert into prestamo values (5002,6004,'2017/11/23','000000000X');
insert into prestamo values (5006,6011,'2017/11/24','000000000X');
insert into prestamo values (5007,6014,'2017/11/25','111111111A');
insert into prestamo values (5008,6015,'2017/11/25','111111111A');
insert into prestamo values (5001,6001,'2017/11/25','222222222B');
insert into prestamo values (5004,6007,'2017/11/26','222222222B');
insert into prestamo values (5006,6012,'2017/11/26','333333333C');


insert into factura values(0,'2017/11/23',2.30,'000000000X');		
insert into factura values(0,'2017/11/24',3.20,'000000000X');		
insert into factura values(0,'2017/11/25',7.60,'111111111A'); 
insert into factura values(0,'2017/11/25',6.20,'222222222B');		
insert into factura values(0,'2017/11/26',1.80,'222222222B');		
insert into factura values(0,'2017/11/26',3.20,'333333333C');		
insert into factura values(0,'2017/11/27',6.80,'333333333C'); 		


insert into detallefactura values(1001,0,'Seven',2.30,1);		
insert into detallefactura values(1002,0,'Jason Bourne II',3.20,1);	
insert into detallefactura values(1003,0,'Jason Bourne I',4.40,1);	
insert into detallefactura values(1003,0,'Jason Bourne II',3.20,1);	
insert into detallefactura values(1004,0,'Gladiator',6.20,1);		
insert into detallefactura values(1005,0,'Ocean’s Eleven',1.80,1);			
insert into detallefactura values(1006,0,'Jason Bourne II',3.20,1);	
insert into detallefactura values(1007,0,'Naufrago',4.8,1);		
insert into detallefactura values(1007,0,'Mision Imposible',2.00,1); 	


# QUERYS SOLICITADAS

/*
1. Nos piden mostrar importes y fechas de facturas que estén asociados a un cliente. 
Dado esto tengo que realizar un join entre las tablas factura y cliente, mediante el campo común DNI. 
*/

select f.fecha, f.importe, c.nombre, c.telefono from factura as f join cliente as c on c.dni=f.dni;


# 2. Suma del importe de todas las facturas del día 25/11/2017 */

select sum(importe) from factura where fecha='2017/11/25';

/*  
3. Nos piden mostrar la descripción, de los productos facturados a un cliente en concreto. 
Debo cruzar las tablas detallefacturas y factura, mediante campo común codiFactura y mediante particula 
where obtener el cliente que piden en concreto. 
*/

select df.descripcion from detallefactura as df 
join factura as f on df.codi_factura=f.codi_factura 
where f.dni='111111111A';

/*
4. Pelicula que un cliente ha tenido o tiene en prestamo, 
cruzo tablas pelicula y prestamo para saber las que se han prestado y luego cruzado las prestadas con la tabla cliente mediante campo común dni. 
*/
select c.nombre, pe.titulo from prestamo as pr 
join pelicula as pe on pe.codi_pelicula=pr.codi_pelicula 
join cliente as c on c.dni=pr.dni;

/*
5. Nos piden cliente y cantidad de películas en prestamo, 
cruzo tablas clente y prestado mediante dni y utilizo función count para saber la cantidad y las agrupo por dni. 
*/

select p.dni, c.nombre, count(codi_pelicula) as numero_peliculas  
from prestamo as p 
join cliente as c on c.dni=p.dni 
group by p.dni;

# 6. Nos piden filtrar por un cliente en concreto, 

select dni, count(codi_pelicula) as numero_peliculas from prestamo where DNI='222222222B' group by DNI;

# 7. Nos piden mostrar los actores principales de las pelis y mostrarlo solo 1 vez, no repetir, por esto se agrupa por codiActor. 

select * from actor where codi_actor in (select codi_actor from pelicula group by codi_actor);

# 8. La query contraria a las anteriores. 

select * from actor where codi_actor not in (select codi_actor from pelicula group by codi_actor);

/* 9. Lista de los títulos de las películas que son del género de terror, no tengo terror listo por drama */

select titulo from pelicula where codi_genero=(select codi_genero from genero where descripcion='terror');

/*
10. Esta query va sobre la tabla pelicula donde se había creado una foreign key con PK de esa misma tabla. 
Cruzo la tabla pelicula 2 veces, en la primera vez lo llamo con t1 y en la segunda con t2 y luego busco la igualdad entre 
la primary key, CodiPeli, y la foreign key, SegundaParte, formada con la primary key codiPeli. 
*/
select p1.titulo as Pelicula, p2.titulo as Segunda_Parte 
from pelicula as p1 join pelicula as p2 on p1.segunda_parte=p2.codi_pelicula;

# 11. Mostrar el número de copias de cada película, utilizo la función count

select codi_pelicula as Peliculas, count(codi_copia) as copia 
from copia group by codi_pelicula;

# 12. Importes facturados ordenados por día, 

select sum(importe) as importes, fecha from factura group by fecha order by fecha desc;

# 13. Obtener la media de las facturas realizadas en un día en concreto y mostrar aquellas que sean superiores a cierto valor. 

select avg(importe) as media_facturas, fecha from factura 
where importe>=30 and fecha>='2017/11/25' group by fecha;

/* 
14. El mínimo facturado en un día en concreto y a qué cliente le corresponde, 
Cruzo las tablas de factura y cliente, mediante campo dni. En la query principal cruzo las tablas entre factura y cliente con el campo común dni 
y en la subquery busco el valor de mínimo de las facturas emitidas en cierto día
*/ 

select f.importe, c.nombre from factura as f join cliente as c on f.dni=c.dni
where f.fecha>='2017/11/26' and f.importe = (select min(importe) from factura);

# 15. Crear una vista como hicimos un día en clase, 

create view vista_cliente_concreto as select * from factura where DNI='111111111A';


