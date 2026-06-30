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
Q1:
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
Q2:
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
Q3:
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
Q4:

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
Q5:
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
