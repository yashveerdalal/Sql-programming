CREATE DATABASE University;

USE University;

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    grades DECIMAL(3, 2) NOT NULL,
    major VARCHAR(100),
    enrollment_date DATE NOT NULL
);

INSERT INTO Student (name, age, grades, major, enrollment_date) VALUES
('Alice Johnson', 20, 3.75, 'Computer Science', '2022-08-15'),
('Bob Smith', 22, 3.50, 'Mathematics', '2021-08-15'),
('Catherine Lee', 21, 3.85, 'Biology', '2022-08-15'),
('David Brown', 19, 3.40, 'Physics', '2023-08-15'),
('Eva White', 23, 3.60, 'Art', '2021-08-15'),
('Frank Green', 20, 3.90, 'Engineering', '2022-08-15'),
('Grace Black', 22, 3.25, 'Literature', '2021-08-15'),
('Henry Blue', 21, 3.70, 'Art', '2022-08-15'),  -- Fixed missing comma here
('Ivy Red', 19, 3.55, 'History', '2023-08-15'),
('Jack Grey', 20, 3.80, 'Art', '2022-08-15');

SELECT name, age FROM Student;
SELECT name, major FROM Student;

SELECT * FROM Student WHERE (grades > 3.5 AND major = 'Art');
SELECT * FROM Student WHERE (grades + 0.1 > 3.5 );


SELECT DISTINCT major FROM Student;

DROP DATABASE University;
