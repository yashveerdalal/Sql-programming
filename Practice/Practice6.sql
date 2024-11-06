


CREATE DATABASE restaurant;

USE restaurant;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Catherine Lee', 'catherine@example.com');

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-01-15', 29.99),
(2, '2024-01-16', 45.50),
(1, '2024-01-17', 15.75);

select * from Customers;
select * from Orders;