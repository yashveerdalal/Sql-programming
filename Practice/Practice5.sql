USE school;


CREATE TABLE Teachers (
    ei INT , 
    name VARCHAR(255) NOT NULL, 
    salary INT UNSIGNED DEFAULT 25000, 
    age INT CHECK (age BETWEEN 50 AND 80),
    PRIMARY KEY(ei,name) -- setting a combination of 2  as the primary key 
);

-- Insert data for 5 teachers
INSERT INTO Teachers (ei, name, age) VALUES
(1, 'Alice Johnson', 55),
(2, 'Bob Smith', 62),
(2, 'Catherine Lee', 58),
(4, 'David Brown', 65),
(5, 'Eva White', 80);

select * from Teachers;
DROP Table Teachers;