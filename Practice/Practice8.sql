
CREATE DATABASE socity;

USE socity;

CREATE TABLE residents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    state VARCHAR(50),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    marks INT CHECK (marks >= 0 AND marks <= 100)
);

INSERT INTO residents (name, state, age, gender, marks) VALUES
('Rahul Sharma', 'Maharashtra', 25, 'Male', 85),
('Anita Rao', 'Karnataka', 30, 'Female', 90),
('Vikram Patel', 'Gujarat', 22, 'Male', 75),
('Sneha Iyer', 'Tamil Nadu', 28, 'Female', 88),
('Arjun Mukherjee', 'West Bengal', 35, 'Male', 80),
('Priya Singh', 'Delhi', 40, 'Female', 92),
('Manish Kaur', 'Punjab', 33, 'Other', 78),
('Neha Sharma', 'Rajasthan', 29, 'Female', 82),
('Rajesh Yadav', 'Uttar Pradesh', 26, 'Male', 76),
('Kavita Reddy', 'Haryana', 24, 'Female', 89),
('Deepak Menon', 'Kerala', 31, 'Male', 91),
('Swati Verma', 'Telangana', 27, 'Other', 73),
('Pooja Das', 'Odisha', 38, 'Female', 84),
('Ajay Dutta', 'Assam', 23, 'Male', 77),
('Simran Gupta', 'Jharkhand', 34, 'Female', 86);



SELECT name, gender, age
FROM residents
WHERE state IN ('Haryana', 'Delhi', 'Punjab', 'Rajasthan');


SELECT * from residents where marks BETWEEN 85 AND 90 ; -- 80 and 90 are inclusive 

SELECT * FROM residents LIMIT 4;

SELECT * FROM residents ORDER BY marks ASC;
SELECT * from residents ORDER BY age ASC;

-----------------------------------------Highest Marks---

SELECT * FROM residents 
ORDER BY marks DESC 
LIMIT 3;
