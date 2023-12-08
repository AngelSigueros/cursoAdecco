create table students (
	id INT not null auto_increment primary key,
	first_name VARCHAR(50) not null,
    last_name VARCHAR(50),
	email varchar(50) not null unique,
    country varchar(50) default 'Spain',
    age int check(age >= 18 and age <= 150),
    class_date Date,
    class_attendance tinyint default 1
);

alter table alumno add column country varchar(30) default 'Spain';

alter table alumno add column age int check(age>=18 and age <=150);

alter table alumno add column age int check(age>=18 and age <=150);

show columns from alumno;

drop table students;

INSERT INTO students (first_name, last_name, email, country, age, class_date, class_attendance) VALUES ('Angel', 'Sigueros', 'a@a.com', 'Soain', 150, '2023-11-29', 1);

INSERT INTO `sakila`.`students` (`first_name`, `last_name`, `email`, `country`, `age`, `class_date`, `class_attendance`) VALUES ('Silvia', 'sanchez', 'silviasanchez@gmail.com', 'colombia', '31', '2023-11-29', '1');

INSERT INTO `sakila`.`alumno`
(`first_name`,`last_name`,`email`,`age`)
VALUES
('Angel','Sigueros','a@a.a',150);

select * from alumno;

truncate alumno;