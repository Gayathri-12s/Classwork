CREATE DATABASE Employee_Exmdb;
USE Employee_Exmdb;

CREATE TABLE employee
(   id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR (50),
    Department VARCHAR (50),
    Leave_Count INT (5) );

INSERT INTO employee (Name, Department, Leave_Count)
VALUES
('Raju', 'Sales', 1),
('Sangeetha', 'Sales', 3),
('Vinay', 'Operations', 8),
('Abey', 'Packing', 2),
('Thomas', 'Packing', 1),
('Muneer', 'Operations', 7),
('Aparna', 'Sales', 3),
('Abid', 'Operations', 9),
('Fathima', 'Sales', 11),
('Varghese', 'Operations', 14);

CREATE TABLE exam
 (  id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_id INT (5),
    exam_status VARCHAR (10),
    FOREIGN KEY (Employee_id) REFERENCES employee(id) );
    
INSERT INTO exam( Employee_id, exam_status)
VALUES
(2, 'Pass'),
(5, 'Fail'),
(1, 'Fail'),
(8, 'Pass'),
(3, 'Pass'),
(1, 'Pass'),
(6, 'Fail'),
(9, 'Pass'),
(10, 'Pass');



SELECT Name, Department, Leave_Count
FROM employee
WHERE Department = 'Sales' AND Leave_Count > 5;


SELECT COUNT(Name) AS no_of_employees
FROM employee
WHERE Department = 'Operations';


SELECT Department, COUNT(*) AS Employee_Count
FROM employee
GROUP BY Department;


SELECT Department, SUM(Leave_Count) AS Total_Leaves
FROM employee
GROUP BY Department
HAVING SUM(Leave_Count) > 10;



SELECT em.Name, ex.exam_status
FROM employee AS em 
INNER JOIN exam AS ex 
ON em.id = ex.Employee_id
WHERE ex.exam_status = 'Pass'
ORDER BY em.Name ;


SELECT em.Name AS NotAttended_Exam
FROM employee AS em
LEFT JOIN exam AS ex
ON em.id=ex.Employee_id
WHERE ex.Employee_id IS NULL;

