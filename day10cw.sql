CREATE DATABASE student_registor;
USE student_registor;
CREATE TABLE students(student_id INT PRIMARY KEY,
                      name VARCHAR (50),
                      email VARCHAR (50) UNIQUE );


CREATE TABLE courses( course_id INT PRIMARY KEY ,
                     course_name VARCHAR (50) );

INSERT INTO students(student_id, name, email)
VALUES(1, 'Anu', 'anu@gmail.com'),
(2, 'Rahul', 'rahul@gmail.com');

INSERT INTO courses(cousre_id, course_name)
VALUES(1, 'python programming'),
(2, 'data science');

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments(student_id, course_id)
VALUES(1, 1),
      (2, 2);
