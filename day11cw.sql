CREATE DATABASE library_system;
USE library_system;

CREATE TABLE authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR (50) );

INSERT INTO authors (author_name)
VALUES
('J.K. Rowling'),
('George Orwell'),
('Agatha Christie');


CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (100),
    author_id INT,
    FOREIGN KEY(author_id)REFERENCES authors(author_id)
    );

INSERT INTO books (title, author_id) 
VALUES
('Harry Potter and the Sorcerer''s Stone', 1),
('1984', 2),
('Animal Farm', 2),
('Murder on the Orient Express', 3);

CREATE INDEX idx_authorid ON books(author_id);
SHOW INDEX FROM books;