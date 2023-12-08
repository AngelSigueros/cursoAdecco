-- many_to_one;

DROP DATABASE many_to_one;
CREATE DATABASE many_to_one;
USE many_to_one;

CREATE TABLE author (
 author_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50),
 email VARCHAR(50),
 biography TEXT
);

CREATE TABLE book (
 book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(300),
 sinopsis TEXT,
 num_pages INT,
 author_id INT,
 CONSTRAINT FK_author_book foreign KEY (author_id) REFERENCES author (author_id) ON UPDATE CASCADE ON DELETE CASCADE
 );
 
  insert into author (first_name, email, biography) values
 ('Almudena Grandes', 'almu@terra.es', 'Escritora Española... ');
 
 insert into book (title, sinopsis, num_pages, author_id) values
 ('El Lobo', 'Lobo grandioso del espacio', 198, 1);

select * from author;
select * from book;

select * from author a
join book b on a.author_id = b.author_id;

-- company

create table company (
	company_id int not null auto_increment primary key,
    nombre varchar(50),
    email varchar(50),
    telefono int
);

create table employee (
	employee_id int not null auto_increment primary key,
    nombre varchar(50),
    email varchar(50),
    telefono int,
    company_id int,
    constraint FK_employee_company foreign key (company_id) references company (company_id)  ON UPDATE CASCADE ON DELETE CASCADE
);

insert into company (nombre, email, telefono) values
('Indra', 'indra@indra.es', '658365100'),
('Pepsi', 'pepsi@pepsi.es', '658365200'),
('CocaCola', 'coca@coca.es', '658365300'),
('Fanta', 'fanta@fanta.es', '658365400');
 
insert into employee (nombre, email, telefono, company_id) values
('Andres', 'andres@indra.es', 658365111, 1),
('Javier', 'javier@indra.es', 658365112, 1),
('Maria', 'maria@pepsi.es', 658365222, 2),
('Esther', 'esther@coca.es', 658365333, 3),
('Victoria', 'vicky@fanta.es', 658365444, 4);

select * from company;
select * from employee;

select * from company c, employee e
where e.company_id = c.company_id;


insert into company (nombre, email, telefono) values
('Indra', 'indra@indra.es', '658365100');

insert into employee (nombre, email, telefono, company_id) values
('Andres', 'andres@indra.es', 658365111, 7);
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`many_to_one`.`employee`, CONSTRAINT `FK_employee_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE)

select * from company;
select * from employee;

DELETE FROM `many_to_one`.`company` WHERE (`company_id` = '1');
DELETE FROM `many_to_one`.`employee` WHERE (`employee_id` = '15');

-- one_to_one;

CREATE TABLE address (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    street varchar(250) not null,
    postal_code varchar(5),
    city varchar(50)
);

CREATE TABLE users (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50),
    email varchar(50),
    id_address int UNIQUE, -- one to one restriction
    CONSTRAINT FK_users_address FOREIGN KEY (id_address) REFERENCES address (id)
    -- ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO address (street, postal_code, city) VALUEs 
('Corazon de Maria', '28017', 'Madrid'),
('Maria Antonia', '28021', 'Madrid'),
('Perez Garcia', '28032', 'Madrid');

INSERT INTO users (first_name, last_name, email, id_address) VALUEs 
('Maria', 'Sanz', 'm@m.m', 1),
('Antonia', 'a@a.a', 'Madrid', 2),
('Pedro', 'p@p.p', 'Madrid', 3);

select * from address;
select * from users;

select * from address a, users u
where u.id = a.id;

INSERT INTO users (first_name, last_name, email, id_address) VALUEs 
('Mario', 'Tapiz', 'm@m.m', 4);

INSERT INTO address (street, postal_code, city) VALUEs 
('Paseo Virgil', '08017', 'Barcelona');

TRUNCATE users;
TRUNCATE address;

delete from users;
delete from address;
