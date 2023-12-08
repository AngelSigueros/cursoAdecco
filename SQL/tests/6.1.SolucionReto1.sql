drop database woocommerce;
create database woocommerce;
use woocommerce;

create table seccion(
codSeccion varchar(10) not null primary key, 
nombre varchar(20) not null, 
representante varchar(20) not null
);

create table producto(
codProducto varchar(50) not null primary key, 
nombre varchar(30) not null, 
precio float not null,
descripcion varchar(100), 
codSeccion varchar(10),
constraint FK_seccion_codSeccion foreign key(codSeccion) references seccion(codSeccion)
);

create table cliente(
dni varchar(10) not null primary key, 
nombre varchar(20) not null, 
edad int, 
direccion varchar(50) not null,
telefono int not null
);

create table venta(
codProducto varchar(50), 
dni varchar(10),
fecha date, 
cantidad int, 
primary key(codProducto, dni, fecha), 
constraint FK_cliente_dni foreign key(dni) references cliente (dni),
constraint FK_producto_codProducto foreign key(codProducto) references producto (codProducto)
);
