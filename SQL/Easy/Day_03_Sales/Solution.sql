/*===========================================================
  DAY 03 - SQL PRACTICE
  Date: 08-07-2026

  Database: practicedb

  Topics Covered:
✅ SELECT
✅ WHERE
✅ ORDER BY
✅ INNER JOIN
✅ Table Aliases (AS)
✅ Aggregate Functions (SUM)
✅ GROUP BY
✅ Column Aliases (AS)
===========================================================*/
USE practicedb;

/*===========================================================
Q1: 
Ans: Retrieve all orders and sort them by OrderAmount from highest to lowest.
===========================================================*/
SELECT *
       FROM orders
		   ORDER BY OrderAmount DESC;

/*===========================================================
Q2:
Ans: Retrieve all those orders having OrderAmount greater than 10k using the 'WHERE' clause.
===========================================================*/
SELECT *
	FROM orders
		WHERE OrderAmount > 10000;

/*===========================================================
Q3:
Ans: Retrieves CustomerName, ProductName, and OrderAmount from the Customers and Orders tables using an INNER JOIN.
     To show Only matching records from both tables.
===========================================================*/
SELECT 
    c.CustomerName, o.ProductName, o.OrderAmount
FROM customers AS c
        INNER JOIN orders AS o 
               ON c.CustomerID = o.CustomerID;

/*===========================================================
Q4:
Ans: Retrieves CustomerName, ProductName, and OrderAmount of customers from Mumbai from the Customers and Orders tables using an INNER JOIN.
     Only matching records are displayed
===========================================================*/
SELECT 
    c.CustomerName, o.ProductName, o.OrderAmount
FROM customers AS c
        INNER JOIN orders AS o 
              ON c.CustomerID = o.CustomerID
WHERE
    City = 'Mumbai';

/*===========================================================
Q5:
Ans: Displays the CustomerName and TotalSales by summing the OrderAmount for each customer. 
     The results are grouped by customer and sorted from highest to lowest total sales.
===========================================================*/
SELECT c.CustomerName,
       SUM(o.OrderAmount) AS TotalSales
FROM customers AS c
         INNER JOIN orders AS o 
	           ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalSales DESC;

/*===========================================================
  END OF DAY 03 PRACTICE
===========================================================*/