drop database if exists sistemaTiendaRetoIV;
create database sistemaTiendaRetoIV;
use sistemaTiendaRetoIV;

create table tienda(
id_tienda int auto_increment, 
propietario varchar(50) not null, 
telefono int not null, 
direccion varchar(100), 
ciudad varchar (20), 
CIF varchar(10),
constraint PK_tienda primary key(id_tienda)
);

create table agente (
id_agente int auto_increment,
tienda int, 
nombre varchar(50) not null, 
apellidos varchar(50) not null, 
telefono int not null, 
direccion varchar(100),  
dni varchar(10),
constraint PK_agente primary key(id_agente), 
constraint FK_agente_tienda foreign key(tienda) references tienda(id_tienda) on update cascade on delete cascade
);

create table proveedor (
id_proveedor int auto_increment,
tienda int, 
empresa varchar(50) not null, 
propietario varchar(50) not null, 
telefono int not null, 
direccion varchar(100),  
dni varchar(10),
constraint PK_proveedor primary key(id_proveedor), 
constraint FK_proveedor_tienda foreign key(tienda) references tienda(id_tienda) on update cascade on delete cascade
);


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
constraint FK_cliente_tienda foreign key(tienda) references tienda(id_tienda) on update cascade on delete cascade
);

create table venta (
id_venta int auto_increment,
cliente int,
agente int, 
articulo varchar(50) not null, 
cantidad int not null, 
precio float not null,
fecha date not null, 
constraint PK_venta primary key(id_venta), 
constraint FK_venta_cliente foreign key(cliente) references cliente(id_cliente) on update cascade on delete cascade,
constraint FK_venta_agente foreign key(agente) references agente(id_agente) on update cascade on delete cascade
);


# Primera solicitud. 

select * from tienda;
select * from agente;
select * from proveedor;
select * from cliente;
select * from venta;

# filtrar las ventas desde junio 2012
select * from venta where fecha >= '2012/06/01';    

# crear una tabla con los datos que el cliente quiere ver. Esto también se puede hacer mediante vista. 

Create table Ventas2Semestre12 (select articulo, cantidad, precio, fecha from venta where fecha>='2012/06/1');
select * from ventas2semestre12;

# hacerlo mediante vista. 
CREATE VIEW Ventas2semestre2012 AS  SELECT articulo, cantidad, precio, fecha FROM venta WHERE fecha>= '2012-06-01';    
select * from Ventas2semestre2012;    

# Mostrar los agentes que tengan el apellido de lopez 

select * from agente where apellidos like '%López%';

# Motrar las ventas de Alfonsina que sean mayores de 12 €, y en tu consultas listas los valores que sean mayores de 12€. En este ejercicio se pide hacer 2 consultas,
# primera obtengo el id de Alfonsina

select id_agente from agente where nombre='Alfonsina' and apellidos='Yaguez Rico';
select * from venta where id_agente=3 and precio*cantidad>12;

# se pide hacerlo en una única consulta sin join, mediante subselect.  

select * from venta where precio*cantidad>12 and agente=(select id_agente from agente where nombre='Alfonsina' and apellidos='Yaguez Rico');

# muestro donde está ubicado la venta realizada por al cliente

select * from tienda where id_tienda in
( select tienda from agente where id_agente in 
(select agente from venta where cliente in
( select id_cliente from cliente where nombre = 'José' and apellidos Like '%Bravo%'))); 
