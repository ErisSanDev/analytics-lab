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
