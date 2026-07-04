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
-- Q1:
SELECT Region, SUM(SalesAmount) AS TotalSales
FROM sales
WHERE YEAR(SalesDate) = YEAR(CURRENT_DATE)
GROUP BY Region
ORDER BY TotalSales DESC
LIMIT 5;

-- Q2:
SELECT CustomerID,
       SUM(OrderAmount) AS TotalCompletedOrders
FROM tempdb.Orders
WHERE Status = 'Delivered'
GROUP BY CustomerID
HAVING SUM(OrderAmount) > 50000
ORDER BY TotalCompletedOrders DESC;

-- Q3:
SELECT Department, AVG(Marks) AS AvgStudentMark
FROM tempdb.students
GROUP BY Department
HAVING AVG(Marks) > 75;

-- Q4:
SELECT Genre, COUNT(MovieID) AS NumberOfMovies
FROM tempdb.movies
WHERE YEAR(ReleaseDate) > 2020
GROUP BY Genre
ORDER BY NumberOfMovies DESC;

-- Q5:
SELECT CampaignName,
       ROUND((Clicks * 100.0) / Impressions, 2) AS CTR
FROM tempdb.AdPerformance
WHERE Impressions > 0
  AND (Clicks * 100.0) / Impressions > 5
ORDER BY CTR DESC;

-- Q6:
SELECT TransactionType,
       SUM(Amount) AS TotalTransaction
FROM tempdb.Transactions
WHERE MONTH(TransactionDate) = MONTH(CURRENT_DATE)
  AND YEAR(TransactionDate) = YEAR(CURRENT_DATE)
GROUP BY TransactionType
ORDER BY TotalTransaction;


-- Q7:
SELECT Category, MAX(Price) AS HighestPrice
FROM tempdb.Products
GROUP BY Category;


-- Q8:
SELECT Department,ROUND(AVG(Salary),2) AS AvgSalary
FROM tempdb.Employees
GROUP BY Department;


-- Q9:
SELECT CustomerID, AVG(DurationSeconds) AS AvgCallDuration
FROM tempdb.CallRecords
GROUP BY CustomerID
HAVING  AVG(DurationSeconds) >300
ORDER BY AvgCallDuration DESC;


-- Q10:
SELECT Disease,
       COUNT(PatientID) AS TotalPatients
FROM tempdb.Patients
WHERE AdmissionDate >= CURRENT_DATE - INTERVAL 30 DAY
GROUP BY Disease;


-- Q11:
SELECT ProductName, ABS(Quantity-ReorderLevel) AS Shortage
FROM tempdb.Inventory
WHERE Quantity < ReorderLevel;


-- Q12:
SELECT LoanID, ROUND(SQRT(LoanAmount),2) AS SquareRootOfLoan
FROM tempdb.Loans;


-- Q13:
SELECT CourseID, 
    CEIL(Fees) AS CeilFees,
    FLOOR(Fees) As FloorFees
FROM tempdb.Courses;


-- Q14:
SELECT DISTINCT City
FROM tempdb.Customers;


-- Q15:
SELECT UserID, SUM(WatchMinutes) As TotalWatchMin
FROM tempdb.WatchHistory
WHERE MONTH(WatchDate) = MONTH(CURRENT_DATE)
                        AND YEAR(WatchDate) = YEAR(CURRENT_DATE) 
GROUP BY UserID
ORDER BY TotalWatchMin DESC;


-- Q16:
SELECT *,
     CASE
        WHEN Salary >=85000 THEN 'High Salary'
        WHEN Salary >= 50000 AND Salary < 85000 THEN 'Medium Salary'
        ELSE 'Low Salary'
END AS SalaryRange
FROM tempdb.Employees_2;


-- Q17:
SELECT LEFT(UPPER(LeadName),5) AS UpperName
FROM tempdb.Leads;


-- Q18:
SELECT ComplaintID, Description
FROM tempdb.Complaints
WHERE INSTR(Description, 'delay') >0;


-- Q19:
SELECT DATE_FORMAT(JoinDate, '%d-%b-%Y') AS FormattedDate 
FROM tempdb.Members;


-- Q20:
SELECT 
    POWER(DistanceKM, 2) AS DistanceSquared,
    MOD(DistanceKM, 7) AS RemainderBy7
FROM tempdb.Shipments;
