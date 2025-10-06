CREATE DATABASE local_library;
USE local_library;
CREATE TABLE books(
    book_id INT PRIMARY KEY,
    title VARCHAR (50) );

INSERT INTO books(book_id, title)
VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

CREATE TABLE borrowers( borrower_id INT (5),
 name VARCHAR (20), 
 book_id INT (5) );
                       
SELECT books.title, borrowers.name
FROM books
LEFT JOIN borrowers
ON books.book_id=borrowers.book_id;         

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id= books.book_id;

SELECT books.title
FROM books
LEFT JOIN borrowers
ON books.book_id=borrowers.book_id
WHERE borrowers.borrower_id IS NULL;

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id=books.book_id;