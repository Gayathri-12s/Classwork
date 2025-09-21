INSERT INTO students(id,name,age,department,grade)
VALUES('1', 'Tina', '22', 'Physics', '89'),
('2','Dev', '19', 'Computer Science', '85'),
('3', 'Anu', '20', 'Physics', '90'),
('4', 'Luke', '24', 'Zoology', '70'); 
SELECT* FROM students
WHERE age>20;
SELECT* FROM students
WHERE IN ('Physics','Computer Science');
SELECT* FROM students
WHERE grade = 90;
SELECT* FROM students
WHERE grade BETWEEN 70 AND 90;
