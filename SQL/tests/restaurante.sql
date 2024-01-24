-- Restaurante 

-- Insertar 10 registros en la tabla dishes
INSERT INTO dishes (dish_id, dish_name, description, price) VALUES
(1, 'Plato1', 'Descripción1', 10.00),
(2, 'Plato2', 'Descripción2', 20.00),
(3, 'Plato3', 'Descripción3', 30.00),
(4, 'Plato4', 'Descripción4', 40.00),
(5, 'Plato5', 'Descripción5', 50.00),
(6, 'Plato6', 'Descripción6', 60.00),
(7, 'Plato7', 'Descripción7', 70.00),
(8, 'Plato8', 'Descripción8', 80.00),
(9, 'Plato9', 'Descripción9', 90.00),
(10, 'Plato10', 'Descripción10', 100.00);

-- Insertar 10 registros en la tabla employees
INSERT INTO employees (employee_id, first_name, last_name, position, salary) VALUES
(1, 'Empleado1', 'Apellido1', 'Posición1', 1000.00),
(2, 'Empleado2', 'Apellido2', 'Posición2', 2000.00),
(3, 'Empleado3', 'Apellido3', 'Posición3', 3000.00),
(4, 'Empleado4', 'Apellido4', 'Posición4', 4000.00),
(5, 'Empleado5', 'Apellido5', 'Posición5', 5000.00),
(6, 'Empleado6', 'Apellido6', 'Posición6', 6000.00),
(7, 'Empleado7', 'Apellido7', 'Posición7', 7000.00),
(8, 'Empleado8', 'Apellido8', 'Posición8', 8000.00),
(9, 'Empleado9', 'Apellido9', 'Posición9', 9000.00),
(10, 'Empleado10', 'Apellido10', 'Posición10', 10000.00);

-- Insertar 10 registros en la tabla customers
INSERT INTO customers (customer_id, first_name, last_name, contact_info) VALUES
(1, 'Cliente1', 'Apellido1', 'contacto1@email.com'),
(2, 'Cliente2', 'Apellido2', 'contacto2@email.com'),
(3, 'Cliente3', 'Apellido3', 'contacto3@email.com'),
(4, 'Cliente4', 'Apellido4', 'contacto4@email.com'),
(5, 'Cliente5', 'Apellido5', 'contacto5@email.com'),
(6, 'Cliente6', 'Apellido6', 'contacto6@email.com'),
(7, 'Cliente7', 'Apellido7', 'contacto7@email.com'),
(8, 'Cliente8', 'Apellido8', 'contacto8@email.com'),
(9, 'Cliente9', 'Apellido9', 'contacto9@email.com'),
(10, 'Cliente10', 'Apellido10', 'contacto10@email.com');

-- Insertar 10 registros en la tabla orders
INSERT INTO orders (order_id, customer_id, employee_id, order_date, total_amount) VALUES
(1, 1, 1, '2023-01-01', 100.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 300.00),
(4, 4, 4, '2023-01-04', 400.00),
(5, 5, 5, '2023-01-05', 500.00),
(6, 6, 6, '2023-01-06', 600.00),
(7, 7, 7, '2023-01-07', 700.00),
(8, 8, 8, '2023-01-08', 800.00),
(9, 9, 9, '2023-01-09', 900.00),
(10, 10, 10, '2023-01-10', 1000.00);

-- Insertar 10 registros en la tabla order_details
INSERT INTO order_details (order_id, dish_id, quantity, price) VALUES
(1, 1, 1, 10.00),
(2, 2, 1, 20.00),
(3, 3, 1, 30.00),
(4, 4, 1, 40.00),
(5, 5, 1, 50.00),
(6, 6, 1, 60.00),
(7, 7, 1, 70.00),
(8, 8, 1, 80.00),
(9, 9, 1, 90.00),
(10, 10, 1, 100.00);


-- Calcular el total de pedidos por fecha. 
-- SELECT * FROM orders;
SELECT order_date, SUM(total_amount) total_pedidos FROM orders 
GROUP BY order_date
ORDER BY order_date DESC;

-- Mostrar todos los pedidos realizados por un cliente específico, por ejemplo cliente 1.
SELECT * FROM orders WHERE customer_id = 1;

-- Obtener una lista detallada de los platos en un pedido específico, por ejemplo pedido 1.
SELECT d.dish_name, d.description, d.price precio_plato, od.quantity, od.price precio_pedido 
FROM dishes d INNER JOIN order_details od ON od.dish_id = d.dish_id
WHERE od.order_id=1;

-- Obtener los salarios promedio de los empleados agrupados por posición.
SELECT position, ROUND(AVG(salary),2) AS Salario FROM employees
GROUP BY position
ORDER BY Salario DESC; 

-- Listar los platos más vendidos basados en la cantidad de veces que fueron pedidos.
SELECT d.dish_name AS nombre_plato, COUNT(od.dish_id) AS veces_pedido FROM dishes d
INNER JOIN order_details od ON od.dish_id = d.dish_id
GROUP BY d.dish_name
ORDER BY veces_pedido DESC;

-- Mostrar la cantidad de pedidos atendidos por cada empleado.
SELECT first_name, COUNT(o.order_id) AS pedidos FROM orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
GROUP BY e.employee_id
ORDER BY pedidos DESC;

-- Identificar a los clientes que han realizado el mayor número de pedidos, es decir, 
-- mostrar nombre, apellido, número de pedidos y número de pedidos que ha hecho ese cliente.
SELECT first_name, last_name, COUNT(o.order_id) AS numero_pedidos FROM orders o
INNER JOIN customers e ON o.customer_id = e.customer_id
GROUP BY e.customer_id
ORDER BY numero_pedidos DESC;



CREATE DATABASE restaurant;
USE restaurant;

CREATE TABLE dishes (
    dish_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dish_name VARCHAR(50) NOT NULL,
    description VARCHAR(250),
    price DECIMAL(6,2) NOT NULL
);

CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary DECIMAL(6,2) NOT NULL
);

CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    contact_info VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(6,2) NOT NULL,
    CONSTRAINT FK_orders_customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    CONSTRAINT FK_orders_employees FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

CREATE TABLE order_details (
    order_id INT NOT NULL,
    dish_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (order_id, dish_id),
    CONSTRAINT FK_orders_details_orders FOREIGN KEY (order_id) REFERENCES orders (order_id),
    CONSTRAINT FK_orders_details_dishes FOREIGN KEY (dish_id) REFERENCES dishes (dish_id)
);