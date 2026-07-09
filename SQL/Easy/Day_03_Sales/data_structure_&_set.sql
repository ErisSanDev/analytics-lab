-- USE practicedb database
USE practicedb;

-- Creating Customers Table for sales analysis.
CREATE TABLE Customers(
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

-- Creating Orders Table for sales analysis.
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    OrderAmount DECIMAL(10,2),
    OrderDate DATE
);

-- Adding Records to Customers Table.
INSERT INTO Customers VALUES
(1, 'Amit', 'Bangalore'),
(2, 'Priya', 'Mumbai'),
(3, 'Rahul', 'Delhi'),
(4, 'Sneha', 'Chennai'),
(5, 'Arjun', 'Hyderabad'),
(6, 'Neha', 'Pune'),
(7, 'Rohan', 'Kolkata'),
(8, 'Anjali', 'Ahmedabad'),
(9, 'Vikram', 'Jaipur'),
(10, 'Kavya', 'Mysore'),
(11, 'Suresh', 'Lucknow'),
(12, 'Meena', 'Bhopal'),
(13, 'Nikhil', 'Nagpur'),
(14, 'Divya', 'Coimbatore'),
(15, 'Kiran', 'Visakhapatnam'),
(16, 'Pooja', 'Indore'),
(17, 'Manoj', 'Surat'),
(18, 'Asha', 'Patna'),
(19, 'Deepak', 'Chandigarh'),
(20, 'Ritika', 'Noida'),
(21, 'Harish', 'Mangalore'),
(22, 'Swathi', 'Vijayawada'),
(23, 'Gaurav', 'Kanpur'),
(24, 'Shreya', 'Nashik'),
(25, 'Ajay', 'Thiruvananthapuram');

-- Adding Records to Orders Table.
INSERT INTO Orders VALUES
(101, 1, 'Laptop', 1, 60000, '2026-06-01'),
(102, 2, 'Mouse', 2, 1000, '2026-06-02'),
(103, 1, 'Keyboard', 1, 1500, '2026-06-03'),
(104, 3, 'Monitor', 1, 12000, '2026-06-04'), 
(105, 4, 'Mouse', 3, 1500, '2026-06-05'),
(106, 5, 'Laptop', 1, 62000, '2026-06-06'),
(107, 2, 'Monitor', 1, 12500, '2026-06-07'),
(108, 3, 'Keyboard', 2, 3000, '2026-06-08'),
(109, 4, 'Laptop', 1, 61000, '2026-06-09'),
(110, 5, 'Mouse', 1, 500, '2026-06-10'),
(111, 1, 'Monitor', 2, 24000, '2026-06-11'),
(112, 2, 'Laptop', 1, 60500, '2026-06-12'),
(113, 3, 'Mouse', 4, 2000, '2026-06-13'),
(114, 4, 'Keyboard', 1, 1800, '2026-06-14'),
(115, 5, 'Monitor', 1, 13000, '2026-06-15'),
(116, 1, 'Mouse', 2, 1200, '2026-06-16'),
(117, 2, 'Keyboard', 3, 4500, '2026-06-17'),
(118, 3, 'Laptop', 1, 63000, '2026-06-18'),
(119, 4, 'Monitor', 2, 25000, '2026-06-19'),
(120, 5, 'Keyboard', 2, 3200, '2026-06-20'),
(121, 1, 'Laptop', 1, 61500, '2026-06-21'),
(122, 2, 'Mouse', 5, 2500, '2026-06-22'),
(123, 3, 'Monitor', 1, 12800, '2026-06-23'),
(124, 4, 'Laptop', 1, 64000, '2026-06-24'),
(125, 5, 'Mouse', 2, 1400, '2026-06-25'),
(126, 1, 'Keyboard', 2, 3400, '2026-06-26'),
(127, 2, 'Monitor', 1, 12600, '2026-06-27');