use socity;


SELECT MAX (marks) FROM residents;


SELECT AVG (marks) FROM residents;

SELECT COUNT (name) FROM residents;


-----------------------------GROUPING 
SELECT gender , avg(marks) AS Average_marks
FROM residents
GROUP BY gender ORDER BY Average_marks;


