/*===========================================================
  DAY 02 - SQL PRACTICE
  Date: 17-06-2026

  Database: TempDB

  Topics Covered:
 SELECT
✅ WHERE
✅ GROUP BY
✅ HAVING
✅ ORDER BY
✅ LIMIT
✅ Aggregate Functions (SUM, AVG, COUNT, MAX)
✅ Date Functions
✅ Numeric Functions
✅ String Functions
✅ DISTINCT
✅ CASE Expression
✅ Column Aliases (AS)
✅ Arithmetic Expressions
===========================================================*/

-- Q1: Find the top 5 regions with the highest total sales during the current year.
SELECT Region, SUM(SalesAmount) AS TotalSales
FROM sales
WHERE YEAR(SalesDate) = YEAR(CURRENT_DATE)
GROUP BY Region
ORDER BY TotalSales DESC
LIMIT 5;

-- Q2: Display the total completed order amount for each customer and show only customers whose total exceeds ₹50,000.
SELECT CustomerID,
       SUM(OrderAmount) AS TotalCompletedOrders
FROM tempdb.Orders
WHERE Status = 'Delivered'
GROUP BY CustomerID
HAVING SUM(OrderAmount) > 50000
ORDER BY TotalCompletedOrders DESC;


-- Q3: Find departments where the average student marks are greater than 75.
SELECT Department, AVG(Marks) AS AvgStudentMark
FROM tempdb.students
GROUP BY Department
HAVING AVG(Marks) > 75;


-- Q4: Show the number of movies released in each genre after 2020.
SELECT Genre, COUNT(MovieID) AS NumberOfMovies
FROM tempdb.movies
WHERE YEAR(ReleaseDate) > 2020
GROUP BY Genre
ORDER BY NumberOfMovies DESC;


-- Q5: Calculate CTR as ROUND((Clicks*100.0)/Impressions,2) for each campaign and show campaigns with CTR above 5%.
SELECT CampaignName,
       ROUND((Clicks * 100.0) / Impressions, 2) AS CTR
FROM tempdb.AdPerformance
WHERE Impressions > 0
  AND (Clicks * 100.0) / Impressions > 5
ORDER BY CTR DESC;


-- Q6: Display total transaction amount by transaction type for the current month.
SELECT TransactionType,
       SUM(Amount) AS TotalTransaction
FROM tempdb.Transactions
WHERE MONTH(TransactionDate) = MONTH(CURRENT_DATE)
  AND YEAR(TransactionDate) = YEAR(CURRENT_DATE)
GROUP BY TransactionType
ORDER BY TotalTransaction;


-- Q7: Show the highest product price available in each category.
SELECT Category, MAX(Price) AS HighestPrice
FROM tempdb.Products
GROUP BY Category;


-- Q8: Display department-wise average salary rounded to 2 decimal places.
SELECT Department,ROUND(AVG(Salary),2) AS AvgSalary
FROM tempdb.Employees
GROUP BY Department;


-- Q9: Find customers whose average call duration exceeds 300 seconds.
SELECT CustomerID, AVG(DurationSeconds) AS AvgCallDuration
FROM tempdb.CallRecords
GROUP BY CustomerID
HAVING  AVG(DurationSeconds) >300
ORDER BY AvgCallDuration DESC;


-- Q10: Display the count of patients admitted for each disease in the last 30 days.
SELECT Disease,
       COUNT(PatientID) AS TotalPatients
FROM tempdb.Patients
WHERE AdmissionDate >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY Disease;


-- Q11:  Display products requiring reorder and calculate shortage using ABS(Quantity - ReorderLevel).
SELECT ProductName, ABS(Quantity-ReorderLevel) AS Shortage
FROM tempdb.Inventory
WHERE Quantity < ReorderLevel;


-- Q12: Display the square root of each loan amount and round it to 2 decimal places.
SELECT LoanID, ROUND(SQRT(LoanAmount),2) AS SquareRootOfLoan
FROM tempdb.Loans;


-- Q13: Display course fees rounded up using CEIL() and rounded down using FLOOR().
SELECT CourseID, 
    CEIL(Fees) AS CeilFees,
    FLOOR(Fees) As FloorFees
FROM tempdb.Courses;


-- Q14: Display unique cities from which customers have registered.
SELECT DISTINCT City
FROM tempdb.Customers;


-- Q15: Find the total watch minutes for each user during the current month.
SELECT UserID, SUM(WatchMinutes) As TotalWatchMin
FROM tempdb.WatchHistory
WHERE MONTH(WatchDate) = MONTH(CURRENT_DATE)
                        AND YEAR(WatchDate) = YEAR(CURRENT_DATE) 
GROUP BY UserID
ORDER BY TotalWatchMin DESC;


-- Q16: Classify employees as High, Medium, or Low salary using CASE statements.
SELECT *,
     CASE
        WHEN Salary >=85000 THEN 'High Salary'
        WHEN Salary >= 50000 AND Salary < 85000 THEN 'Medium Salary'
        ELSE 'Low Salary'
END AS SalaryRange
FROM tempdb.Employees_2;


-- Q17: Display lead names in uppercase and show only the first 5 characters of each name.
SELECT LEFT(UPPER(LeadName),5) AS UpperName
FROM tempdb.Leads;


-- Q18: Find complaints where the word 'delay' appears in the description using INSTR().
SELECT ComplaintID, Description
FROM tempdb.Complaints
WHERE INSTR(Description, 'delay') >0;


-- Q19: Convert JoinDate into 'DD-MON-YYYY' string format and display it.
SELECT DATE_FORMAT(JoinDate, '%d-%b-%Y') AS FormattedDate 
FROM tempdb.Members;


-- Q20: Display the distance squared using POWER() and the remainder when divided by 7 using MOD().
SELECT 
    POWER(DistanceKM, 2) AS DistanceSquared,
    MOD(DistanceKM, 7) AS RemainderBy7
FROM tempdb.Shipments;
