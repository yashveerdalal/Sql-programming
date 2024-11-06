-- keys 

-- PRIMARY KEY
-- it is a column or set of columnns in a table that uniquely identifies each row
-- there is only one PRIMARY key and it should not be NULL

-- FOREIGN KEY
-- a FOREIGN KEY is a column or set of COLUMN in a table that refers to the PRIMARY key in another table 
-- -- there can be multiple FOREIGN keys 
-- A foreign key is a way to connect two tables in a database
-- FOREIGN keys can have DUPLICATE or NULL values 



-- In SQL, constraints are rules applied to columns in a table to ensure the integrity and accuracy of the data. Here are some of the major types of constraints:

-- Primary Key: Ensures that each record in a table is unique and not null. There can only be one primary key per table.
-- Foreign Key: Links two tables together by enforcing a relationship. It ensures that the value in one table must match a value in another table.
-- Unique: Ensures that all values in a column are unique across the table, meaning no duplicates are allowed (except for null values).
-- Not Null: Ensures that a column cannot have a null value, meaning every record must have a value in that column.
-- Check: Enforces a specific condition on a column's values. For example, it can ensure that a column only accepts values within a certain range.
-- Default: Sets a default value for a column if no value is provided when a new record is inserted.
