-- crear base de datos many_to_one2
DROP SCHEMA IF EXISTS many_to_one2;
CREATE SCHEMA many_to_one2;
USE many_to_one2;

-- crear tabla company

CREATE TABLE IF NOT EXISTS company (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cif VARCHAR(9) NOT NULL,
    phone VARCHAR(12)
);

-- crear tabla employee, con foreign key a company 
CREATE TABLE IF NOT EXISTS employee (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nif VARCHAR(9) NOT NULL,
    salary DECIMAL(12, 2),
    id_company INT,
    FOREIGN KEY (id_company) REFERENCES company(id)
);

-- INSERT company
INSERT INTO company (cif, phone) VALUES
('B11111111', '111111111'),
('B22222222', '222222222')
;
-- INSERT employee
INSERT INTO employee(nif, salary, id_company) 
VALUES
('11111111T', NULL, 1),
('22222222E', 25000.0, 1);

select * from company;
select * from employee;

-- INSERT employee poniendo una company que no existe y comprobar que da error
 -- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`many_to_one2`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`))	0.000 sec
INSERT INTO employee(nif, salary, id_company) 
VALUES
('11111111T', NULL, 44);


-- DELETE company que tenga employees asociados y comprobar que no deja borrar
-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`many_to_one2`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`))	0.016 sec
DELETE FROM company WHERE id = 1;


-- contar el numero de empleados agrupados por company id
select id_company, count(*) as num_employees from employee group by id_company;



-- PAra poder borrar la company 1 primero hay que poner a NULL el id_company en employees:

UPDATE employee SET id_company = NULL where id = 1;
UPDATE employee SET id_company = NULL where id = 2;

select * from employee;
-- Ahora ya debería dejar borrar empresa porque hemos desasociado los employees.
DELETE FROM company WHERE id = 1;
select * from company;

