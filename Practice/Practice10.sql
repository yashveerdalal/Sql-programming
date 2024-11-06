-- The HAVING clause in SQL is used to filter results after aggregating data. It works with GROUP BY to apply conditions on groups.

CREATE DATABASE harvard;

USE harvard;

CREATE TABLE geeks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    marks INT,
    grade VARCHAR(1)
);

INSERT INTO geeks (name, city, marks, grade) VALUES
('Alice Johnson', 'New York', 95, 'A'),
('Bob Smith', 'Philadelphia', 85, 'B'),
('Charlie Brown', 'Dallas', 72, 'C'),
('Diana Prince', 'New York', 60, 'D'),
('Ethan Hunt', 'New York', 50, 'F'),
('Fiona Gallagher', 'Philadelphia', 88, 'A'),
('George Miller', 'Dallas', 91, 'A'),
('Hannah Baker', 'Dallas', 77, 'C'),
('Ian Malcolm', 'San Diego', 82, 'B'),
('Julia Roberts', 'Philadelphia', 65, 'D');

SELECT DISTINCT city FROM geeks;

SELECT city, COUNT(id) 
FROM geeks 
GROUP BY city
HAVING max(marks)>90
ORDER BY city DESC;
 
-- General Order of SQL Clauses
-- SELECT: Specify the columns you want to retrieve.
-- Example: SELECT column1, column2

-- FROM: Specify the table(s) from which to retrieve the data.
-- Example: FROM table_name

-- WHERE: Filter records based on specified conditions.
-- Example: WHERE condition

-- GROUP BY: Group rows that have the same values in specified columns into summary rows.
-- Example: GROUP BY column

-- HAVING: Filter groups based on aggregate functions (used with GROUP BY).
-- Example: HAVING condition

-- ORDER BY: Sort the result set in ascending or descending order.
-- Example: ORDER BY column ASC|DESC

