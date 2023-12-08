DROP SCHEMA IF EXISTS many_to_one1;
CREATE SCHEMA many_to_one1;
USE many_to_one1;

-- CREATE TABLE author
CREATE TABLE IF NOT EXISTS author (
	author_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    email VARCHAR(50),
    biography TEXT
);

-- CREATE TABLE book
CREATE TABLE IF NOT EXISTS book (
	book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300),
    sinopsis TEXT,
    num_pages INT,
    -- columna para asociar FOREIGN KEY EN book con la tabla autor
    author_id INT, 
    -- Opción 1: Foreign key con nombre autogenerado
    -- FOREIGN KEY (author_id) REFERENCES author(author_id)
    -- Opcion 2: Foreign key con nombre específicado
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author(author_id)
);

INSERT INTO author(first_name, email, biography) 
VALUES 
('author1', 'a1@company.com', 'Biografía inventada'),
('author2', 'a2@company.com', 'Biografía inventada'),
('author3', 'a3@company.com', 'Biografía inventada');

select * from author;

INSERT INTO book(title, sinopsis, num_pages, author_id) 
VALUES
('Book 1', 'lorem ipsum dolor', 500, 1), -- Author 1
('Book 2', 'descripcion guay', 950, 1), -- Author 1
('Book 3', 'otra descripcion', 700, 2), -- Author 2
('Book 4', 'otra descripcion', 700, 2), -- Author 2
('Book 5', 'otra descripcion', 700, 3), -- Author 3
('Book 6', 'otra descripcion', 700, 3) -- Author 3
;

select * from book;
select * from book where author_id = 2;

-- crear base de datos many_to_one2
-- crear tabla company
-- crear tabla employee, con foreign key a company 