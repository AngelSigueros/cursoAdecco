create schema many_to_many;
use many_to_many;

create table book (
id int not null auto_increment primary key,
title varchar(100),
author varchar(100),
num_pages int
);

create table category (
id int not null auto_increment primary key,
name varchar(150),
min_age int
);

create table book_category (
id_book int,
id_category int, 
fecha DATE,
primary key (id_book, id_category),
constraint FK_book_category foreign key (id_book) references book (id),
constraint FK_category_book foreign key (id_category) references category (id)
);

select * from book;
select * from category;
select * from book_category;

insert into book (title, author, num_pages) values
('El Lobo Feroz', 'Alan Paz', 125);

insert into category (name, min_age) values
('Aventura', 12);

insert into book_category (id_book, id_category, fecha) values
(1, 1, now()),
(1, 2, now()),
(2, 1, now()),
(3, 2, now()),
(3, 3, now());

select * from book b, category c, book_category bc
where b.id = bc.id_book
and c.id = bc.id_category;



delete from book;
delete from category;