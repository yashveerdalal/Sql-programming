-- Structure of a Database
-- Database -> Table -> actual Data
-- & the tables most of the time CONTAINS inter-related data 
-- "Columns tell us about the general structure of the table, while rows contain the data for individual entries."
-- Structure is also known by the word schema

CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
    id INT PRIMARY KEY, 
    name VARCHAR(50), 
    age INT NOT NULL
);

INSERT INTO student VALUES (1, "Yashveer Dalal", 14);
INSERT INTO student VALUES (2, "Deepanshu Goel", 16);
INSERT INTO student (id, name, age) VALUES (3, "Harsh", 57), (4, "Dhruv", 34);
INSERT INTO student(id , name , age)VALUES(5 ,'Keshav',84);

SELECT * FROM student;

DROP DATABASE IF EXISTS college;

SHOW DATABASES;
SHOW TABLES;
