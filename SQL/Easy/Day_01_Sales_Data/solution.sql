/*===========================================================
  DAY 01 - SQL PRACTICE
  Date: 16-06-2026

  Database: DataAnalyst_Practice

  Topics Covered:
  1. Filtering Data (WHERE)
  2. Aggregation (COUNT, SUM)
  3. GROUP BY & HAVING
  4. INNER JOIN
  5. LEFT JOIN
===========================================================*/


/*===========================================================
  DATABASE SETUP
===========================================================*/

-- Create database
CREATE DATABASE DataAnalyst_Practice;

-- Select database
USE DataAnalyst_Practice;


/*===========================================================
  TABLE: Customers
  Stores customer information
===========================================================*/
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Insert customer records
INSERT INTO Customers VALUES
(1,'Aarav','Bangalore'),
(2,'Diya','Mumbai'),
(3,'Rohan','Delhi'),
(4,'Ananya','Chennai'),
(5,'Kabir','Pune');


/*===========================================================
  TABLE: Products
  Stores product details and pricing information
===========================================================*/
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Insert product records
INSERT INTO Products VALUES
(101,'Wireless Mouse','Electronics',800),
(102,'Keyboard','Electronics',1200),
(103,'Notebook','Stationery',100),
(104,'Office Chair','Furniture',5000),
(105,'Desk Lamp','Furniture',1500);


/*===========================================================
  TABLE: Orders
  Stores customer purchase transactions
===========================================================*/
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

-- Insert order records
INSERT INTO Orders VALUES
(1001,1,101,2,'2026-06-01'),
(1002,2,102,1,'2026-06-01'),
(1003,1,103,5,'2026-06-02'),
(1004,3,104,1,'2026-06-03'),
(1005,2,105,2,'2026-06-03'),
(1006,4,101,1,'2026-06-04');


/*===========================================================
  Q1. Find all products that belong to the Furniture category

  Business Requirement:
  The Sales Manager wants to view all furniture products
  along with their IDs and prices.
===========================================================*/
SELECT
    product_id,
    product_name,
    price
FROM Products
WHERE category = 'Furniture';


/*===========================================================
  Q2. Identify customers who have placed more than one order

  Business Requirement:
  Find customers who made multiple purchases.

  Note:
  COUNT(order_id) is used because we are counting orders,
  not total quantity purchased.
===========================================================*/
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;


/*===========================================================
  Q3. Display every order with customer details

  Business Requirement:
  Generate an order report showing customer names and
  corresponding order information.

  Join Type:
  INNER JOIN
===========================================================*/
SELECT
    o.order_id,
    c.customer_name,
    o.order_date,
    o.quantity
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id;


/*===========================================================
  Q4. Display all customers, including those who have never
      placed an order

  Join Type:
  LEFT JOIN
===========================================================*/
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id
FROM Customers c
LEFT JOIN Orders o
    ON c.customer_id = o.customer_id;


/*===========================================================
  Q5. Calculate total units sold for each product

  Business Requirement:
  Management wants to analyze product sales performance.

  Join Type:
  LEFT JOIN
  (Includes products with no sales)

===========================================================*/
SELECT
    p.product_name,
    COALESCE(SUM(o.quantity), 0) AS total_quantity_sold
FROM Products p
LEFT JOIN Orders o
    ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;


/*===========================================================
  END OF DAY 01 PRACTICE
===========================================================*/
