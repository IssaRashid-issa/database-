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
-- Question 1: Create a table named student
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

SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
-- Question 1
DROP INDEX IdxPhone ON customers;
-- Question 2
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';
-- Question 3
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';
-- Question 4
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';







