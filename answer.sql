create database saleDB;
drop database demo;
SELECT checkNumber, paymentDate, amount
FROM payments;
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;
SELECT * 
FROM offices;
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;

CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

INSERT INTO student (id, fullName, age) VALUES
(1, 'Alice Johnson', 18),
(2, 'Bob Smith', 19),
(3, 'Charlie Brown', 21);

UPDATE student
SET age = 20
WHERE id = 2;
