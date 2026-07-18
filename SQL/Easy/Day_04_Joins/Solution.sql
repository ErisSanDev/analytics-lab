/*===========================================================
  DAY 04 - JOINS PRACTICE
  Date: 15-07-2026

  Database: dataanalyst_practice;

  Topics Covered:
✅ SELECT
✅ WHERE
✅ ORDER BY
✅ INNER JOIN,  LEFT JOIN 
✅ Table Aliases (AS)
✅ Aggregate Functions (SUM, COUNT)
✅ GROUP BY
✅ HAVING
✅ BETWEEN & AND OPERATOR
✅ LIKE OPERATOR
===========================================================*/
USE dataanalyst_practice;

/*===========================================================
Q1: 
Ans: 
===========================================================*/
SELECT 
    c.Category, 
    COUNT(p.ProductID) AS ProductCount
FROM Products_1 AS p
    INNER JOIN Categories_1 AS c 
                  ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID , c.Category
HAVING COUNT(p.ProductID) > 5
ORDER BY ProductCount DESC;

/*===========================================================
Q2:
Ans: 
===========================================================*/
SELECT 
    c.CustomerID,
    c.CustomerName,
    SUM(o.TotalAmount) AS Total_Order_Values
FROM orders_2 AS o
    LEFT JOIN customers_2 AS c 
                 ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID , c.CustomerName
HAVING SUM(o.TotalAmount) BETWEEN 500 AND 1000
ORDER BY Total_Order_Values DESC;

-- Alternative answer
SELECT 
    c.CustomerID,
    c.CustomerName,
    SUM(o.TotalAmount) AS Total_Order_Values
FROM orders_2 AS o
    INNER JOIN Customers_2 AS c 
                  ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING SUM(o.TotalAmount) BETWEEN 500 AND 1000
ORDER BY Total_Order_Values DESC;

/*===========================================================
Q3:
Ans: 
===========================================================*/
SELECT c.CustomerName, 
       c.CustomerContact, 
       c.Address, o.OrderID, 
       o.OrderDate 
FROM customers_2 AS c
    INNER JOIN orders_2 AS o 
               ON c.CustomerID = o.CustomerID
WHERE YEAR(o.OrderDate) BETWEEN 2024 AND 2024
ORDER BY o.OrderDate DESC;

/*===========================================================
Q4:
Ans: 
===========================================================*/
SELECT s.SupplierName, 
      COUNT(p.ProductName) AS Total_No_Product 
FROM suppliers AS s
    LEFT JOIN product AS p 
             ON s.SupplierID = p.SupplierID
WHERE s.SupplierName LIKE 'A%'
GROUP BY s.SupplierName;

/*===========================================================
Q5:
Ans: 
===========================================================*/
SELECT p.ProductName, 
       c.CategoryName 
FROM products AS p
    LEFT JOIN categories AS c 
             ON c.CategoryID = p.CategoryID
WHERE p.ProductName LIKE '%phone%'
ORDER BY p.ProductName;

/*===========================================================
  END OF DAY 04 PRACTICE
===========================================================*/