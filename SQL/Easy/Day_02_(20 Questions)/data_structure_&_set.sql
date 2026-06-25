# Syntax for creating a temporary database in SQL Server.
CREATE DATABASE TempDB;

-- Use the temporary database.
USE TempDB;

-- 1. Creating temporary sales table.
CREATE TABLE Sales(
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(100)  NOT NULL,
    Region VARCHAR(50)        NOT NULL,
    SalesAmount DECIMAL(10,2) NOT NULL,
    SalesDate DATE            NOT NULL
);


-- 2. Creating temporary table Orders for Orders.
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderAmount DECIMAL(10,2) NOT NULL,
    OrderDate DATE            NOT NULL,
    Status VARCHAR(50)
);

-- 3. Creating temporary table Students for Students.
CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    Department VARCHAR(100) NOT NULL,
    Marks INT               NOT NULL
);

-- 4. Creating temporary table Movies for Movies.
CREATE TABLE Movies(
    MovieID INT PRIMARY KEY,
    MovieName VARCHAR(150) NOT NULL,
    Genre VARCHAR(100)     NOT NULL,
    Rating DECIMAL(3,1)    NOT NULL,
    ReleaseDate DATE       NOT NULL
);

-- 5. Creating temporary table AdPerformance for Advertisements.
CREATE TABLE AdPerformance(
    AdID INT PRIMARY KEY,
    CampaignName VARCHAR(150) NOT NULL,
    Clicks INT                NOT NULL,
    Impressions VARCHAR(50)   NOT NULL,
    Cost DECIMAL(10,2)        NOT NULL
);

-- 6. Creating temporary table Transactions for Banking.
CREATE TABLE Transactions(
    TransactionID INT PRIMARY KEY,
    CustomerID INT UNIQUE,
    TransactionType VARCHAR(50) NOT NULL,
    Amount DECIMAL(10,2)        NOT NULL,
    TransactionDate DATE        NOT NULL
);

-- 7. Creatig temporary table Products for Retail.
CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    Category VARCHAR(50)     NOT NULL,
    Price DECIMAL(10,2)      NOT NULL
);

-- 8. Creating temporary table Employees for Employees.
CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(150)  NOT NULL,
    Salary DECIMAL(10,2)     NOT NULL
);

-- 9. Creating temporary table CallRecords for Telecom.
CREATE TABLE CallRecords(
    CallID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    DurationSeconds TIME NOT NULL,
    CallDate DATE        NOT NULL
);

-- 10. Creating temporary table Patients for Hospital,
CREATE TABLE Patients(
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50) NOT NULL,
    Disease VARCHAR(200)    NOT NULL,
    AdmissionDate DATE      NOT NULL
);

-- 11. Creating temporary table Inventory for Inventory.
CREATE TABLE Inventory(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    Quantity INT             NOT NULL,
    ReorderLevel INT         NOT NULL
) ;     

-- 12. Creating temporary table Loans for Inventory.
CREATE TABLE Loans(
    LoanID INT PRIMARY KEY,
    CustomerID INT UNIQUE,
    LoanAmount DECIMAL(10,2) NOT NULL,
    InterestRate DECIMAL(5,2) NOT  NULL
);

-- 13. Creating temporary table Courses for Education..
CREATE TABLE Courses(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(150) NOT NULL,
    Fees DECIMAL(10,2)      NOT NULL
);

-- 14. Creating temporary table Customers for E-commerce..
CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    City VARCHAR(100)        NOT NULL
);

-- 15. Creating temporary table WatchHistory for Streaming.
CREATE TABLE WatchHistory(
    UserID INT PRIMARY KEY,
    MovieID INT UNIQUE,
    WatchMinutes TIME NOT NULL,
    WatchDate DATE    NOT NULL
);

-- 16. Creating temporary table Employees for HR.
CREATE TABLE Employees_2(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2)     NOT NULL 
);

-- 17. Creating temporary table Leads for Marketing.
CREATE TABLE Leads(
    LeadID INT PRIMARY KEY,
    LeadName VARCHAR(50) NOT NULL,
    Source VARCHAR(150) NOT NULL
);

-- 18. Creating temporary table Complaints for Customer Service.
CREATE TABLE Complaints(
    ComplaintID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    Description VARCHAR(500) NOT NULL
);

-- 19. Creating temporary table Members for Membership.
CREATE TABLE Members(
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50) NOT NULL,
    JoinDate DATE NOT NULL
);

-- 20. Creating temporary table Shipments for Logistics.
CREATE TABLE Shipments(
    ShipmentID INT PRIMARY KEY,
    RouteName VARCHAR(150) NOT NULL,
    DistanceKM DECIMAL(10,2) NOT NULL
);


-- =============================================
-- INSERT RECORDS INTO EACH OF THE 20 TABLES
-- =============================================

USE TempDB;

-- =============================================
-- 1. Sales Table
-- =============================================
INSERT INTO Sales (SaleID, ProductName, Region, SalesAmount, SalesDate) VALUES
(1,  'Laptop',           'North',  62000.00, '2022-01-05'),
(2,  'Smartphone',       'South',  38000.00, '2022-02-10'),
(3,  'Tablet',           'East',   22000.00, '2022-03-15'),
(4,  'Monitor',          'West',   14000.00, '2022-04-20'),
(5,  'Keyboard',         'North',   2800.00, '2022-05-01'),
(6,  'Mouse',            'South',   1900.00, '2023-01-05'),
(7,  'Headphones',       'East',   11000.00, '2023-02-10'),
(8,  'Webcam',           'West',    6500.00, '2023-03-15'),
(9,  'Printer',          'North',  15000.00, '2023-04-01'),
(10, 'Scanner',          'South',  10500.00, '2023-05-05'),
(11, 'External HDD',     'East',    8500.00, '2023-06-10'),
(12, 'USB Hub',          'West',    3200.00, '2023-07-15'),
(13, 'Smart Watch',      'North',  25000.00, '2024-01-05'),
(14, 'Bluetooth Speaker','South',   6000.00, '2024-02-25'),
(15, 'Gaming Console',   'East',   40000.00, '2024-03-30'),
(16, 'Laptop',           'West',   70000.00, '2024-04-10'),
(17, 'Smartphone',       'North',  48000.00, '2024-05-15'),
(18, 'Tablet',           'South',  28000.00, '2024-06-20'),
(19, 'Monitor',          'East',   19000.00, '2024-07-25'),
(20, 'Keyboard',         'West',    4200.00, '2024-08-30'),
(21, 'Laptop',           'North',  85000.00, '2026-01-08'),
(22, 'Smartphone',       'South',  52000.00, '2026-01-20'),
(23, 'Gaming Console',   'East',   47000.00, '2026-02-05'),
(24, 'Smart Watch',      'West',   33000.00, '2026-02-18'),
(25, 'Tablet',           'North',  27000.00, '2026-03-01'),
(26, 'Monitor',          'South',  21000.00, '2026-03-14'),
(27, 'Headphones',       'East',   13500.00, '2026-04-02'),
(28, 'Printer',          'West',   16000.00, '2026-04-20'),
(29, 'Webcam',           'North',   7200.00, '2026-05-05'),
(30, 'Bluetooth Speaker','South',   9800.00, '2026-05-22');

-- =============================================
-- 2. Orders Table
-- =============================================
INSERT INTO Orders (OrderID, CustomerID, OrderAmount, OrderDate, Status) VALUES
(1,  101, 18000.00, '2024-01-02', 'Delivered'),
(2,  101, 22000.00, '2024-02-10', 'Delivered'),
(3,  101, 15000.00, '2024-03-05', 'Delivered'),
(4,  102, 30000.00, '2024-01-15', 'Delivered'),
(5,  102, 27000.00, '2024-02-20', 'Delivered'),
(6,  103, 12000.00, '2024-01-08', 'Shipped'),
(7,  103,  9500.00, '2024-02-14', 'Cancelled'),
(8,  103, 11000.00, '2024-03-18', 'Pending'),
(9,  104, 45000.00, '2024-01-22', 'Delivered'),
(10, 104, 21000.00, '2024-03-10', 'Delivered'),
(11, 105, 16000.00, '2024-02-05', 'Delivered'),
(12, 105, 14500.00, '2024-03-01', 'Delivered'),
(13, 105, 24000.00, '2024-03-28', 'Delivered'),
(14, 106,  8000.00, '2024-01-30', 'Cancelled'),
(15, 106,  7500.00, '2024-02-25', 'Shipped'),
(16, 107, 33000.00, '2024-01-12', 'Delivered'),
(17, 107, 29000.00, '2024-02-18', 'Delivered'),
(18, 108, 19000.00, '2024-03-07', 'Delivered'),
(19, 108, 17500.00, '2024-03-20', 'Delivered'),
(20, 109, 41000.00, '2024-02-28', 'Delivered');
-- ============================================================
-- 3. Students Table
-- ============================================================
INSERT INTO Students (StudentID, StudentName, Department, Marks) VALUES
(1,  'Aarav Sharma',    'Computer Science', 88),
(2,  'Priya Mehta',     'Computer Science', 92),
(3,  'Rohit Verma',     'Computer Science', 79),
(4,  'Sneha Iyer',      'Computer Science', 85),
(5,  'Karan Joshi',     'Computer Science', 91),
(6,  'Divya Nair',      'Mechanical',       62),
(7,  'Amit Rao',        'Mechanical',       70),
(8,  'Pooja Gupta',     'Mechanical',       68),
(9,  'Suresh Pillai',   'Mechanical',       74),
(10, 'Meera Das',       'Mechanical',       60),
(11, 'Vikram Singh',    'Civil',            80),
(12, 'Anjali Patel',    'Civil',            83),
(13, 'Nikhil Kumar',    'Civil',            77),
(14, 'Ritu Sharma',     'Civil',            90),
(15, 'Sanjay Yadav',    'Civil',            76),
(16, 'Lakshmi Reddy',   'Electronics',      55),
(17, 'Rahul Tiwari',    'Electronics',      65),
(18, 'Preethi Nair',    'Electronics',      72),
(19, 'Arjun Mishra',    'Electronics',      60),
(20, 'Swati Kulkarni',  'Electronics',      58),
(21, 'Deepak Bose',     'IT',               95),
(22, 'Kavya Menon',     'IT',               89),
(23, 'Harish Jain',     'IT',               82),
(24, 'Tanvi Shah',      'IT',               91),
(25, 'Manish Dubey',    'IT',               87);

-- ============================================================
-- 4. Movies Table
-- ============================================================
INSERT INTO Movies (MovieID, MovieName, Genre, Rating, ReleaseDate) VALUES
(1,  'Galactic Wars',      'Sci-Fi',  8.1, '2021-03-15'),
(2,  'Beyond the Stars',   'Sci-Fi',  7.9, '2022-07-20'),
(3,  'Quantum Breach',     'Sci-Fi',  8.4, '2023-01-10'),
(4,  'Nebula Rising',      'Sci-Fi',  7.5, '2024-05-18'),
(5,  'Code Red',           'Action',  7.8, '2021-06-05'),
(6,  'Fire Storm',         'Action',  8.2, '2022-09-14'),
(7,  'Shadow Strike',      'Action',  7.6, '2023-03-22'),
(8,  'Blaze of Glory',     'Action',  8.0, '2024-11-01'),
(9,  'Laugh Track',        'Comedy',  7.2, '2021-12-25'),
(10, 'Oops Again',         'Comedy',  6.9, '2022-04-10'),
(11, 'Comic Chaos',        'Comedy',  7.5, '2023-08-30'),
(12, 'The Last Tear',      'Drama',   8.5, '2021-02-14'),
(13, 'Broken Bridges',     'Drama',   8.8, '2022-10-05'),
(14, 'Silent Echoes',      'Drama',   8.3, '2023-07-19'),
(15, 'The Haunting',       'Horror',  7.7, '2021-10-31'),
(16, 'Dark Whispers',      'Horror',  7.4, '2022-10-31'),
(17, 'Nightmare Lane',     'Horror',  7.9, '2023-10-30'),
(18, 'Crimson Shadows',    'Horror',  8.1, '2024-04-12'),
(19, 'Heart Strings',      'Romance', 7.3, '2021-02-13'),
(20, 'Love in Mumbai',     'Romance', 7.8, '2022-02-12'),
(21, 'Forever Yours',      'Romance', 8.0, '2023-05-20'),
(22, 'Jungle Run',         'Adventure',7.6,'2021-08-08'),
(23, 'Ocean Depths',       'Adventure',8.2,'2022-06-18'),
(24, 'Mountain Peak',      'Adventure',7.9,'2023-09-25'),
(25, 'Desert Storm',       'Adventure',8.4,'2024-07-04');


-- ============================================================
-- 5. AdPerformance Table
-- ============================================================
INSERT INTO AdPerformance (AdID, CampaignName, Clicks, Impressions, Cost) VALUES
(1,  'Summer Sale 2024',      850,  '10000', 1200.00), 
(2,  'Diwali Blast',          620,  '8000',   980.00), 
(3,  'New Year Offer',        310,  '9500',   750.00), 
(4,  'Republic Day Deal',     480,  '6000',   640.00), 
(5,  'Back to School',        200,  '7000',   430.00), 
(6,  'Monsoon Madness',       560,  '7500',   890.00), 
(7,  'Weekend Flash Sale',    120,  '5000',   310.00), 
(8,  'Valentine Special',     700,  '9000',  1100.00), 
(9,  'Independence Day',      180,  '8500',   520.00), 
(10, 'Holi Colours',          530,  '7200',   780.00), 
(11, 'Eid Celebration',       420,  '6800',   610.00), 
(12, 'Christmas Cheer',       150,  '6000',   400.00), 
(13, 'Pongal Fiesta',         650,  '8800',   950.00), 
(14, 'Navratri Special',      290,  '9200',   670.00), 
(15, 'End of Season',         810,  '9800',  1300.00), 
(16, 'Tech Launch 2024',      380,  '7400',   580.00), 
(17, 'Fitness Campaign',      100,  '5500',   250.00), 
(18, 'Travel Deals',          670,  '8300',  1050.00), 
(19, 'Food Fest',             230,  '7600',   490.00), 
(20, 'Fashion Week',          590,  '7100',   870.00), 
(21, 'Home Decor',            340,  '8100',   600.00), 
(22, 'Gadget Gala',           720,  '9300',  1150.00), 
(23, 'Kids Zone',             160,  '6200',   360.00), 
(24, 'Pet Care',              510,  '8000',   740.00), 
(25, 'Book Fair',             410,  '6500',   630.00); 


-- ============================================================
-- 6. Transactions Table
-- ============================================================
INSERT INTO Transactions
(TransactionID, CustomerID, TransactionType, Amount, TransactionDate)
VALUES
(1,  101, 'Credit',   15000.00, '2021-01-15'),
(2,  102, 'Debit',     8500.00, '2021-03-22'),
(3,  103, 'Transfer', 22000.00, '2021-07-10'),
(4,  104, 'Credit',   12000.00, '2021-11-05'),
(5,  105, 'Debit',     5000.00, '2022-02-14'),
(6,  106, 'Transfer',  9500.00, '2022-04-28'),
(7,  107, 'Credit',   18000.00, '2022-08-19'),
(8,  108, 'Debit',     7200.00, '2022-12-03'),
(9,  109, 'Transfer', 31000.00, '2023-01-25'),
(10, 110, 'Credit',   25000.00, '2023-03-18'),
(11, 111, 'Debit',     4500.00, '2023-05-09'),
(12, 112, 'Transfer', 16500.00, '2023-07-27'),
(13, 113, 'Credit',    9800.00, '2023-10-12'),
(14, 114, 'Debit',     6300.00, '2023-12-21'),
(15, 115, 'Transfer', 11000.00, '2024-01-30'),
(16, 116, 'Credit',   20000.00, '2024-04-16'),
(17, 117, 'Debit',     3800.00, '2024-06-08'),
(18, 118, 'Transfer', 27000.00, '2024-08-24'),
(19, 119, 'Credit',   14500.00, '2024-10-17'),
(20, 120, 'Debit',     9100.00, '2024-12-29'),
(21, 121, 'Transfer', 19000.00, '2025-02-11'),
(22, 122, 'Credit',   17300.00, '2025-04-07'),
(23, 123, 'Debit',     6700.00, '2025-06-15'),
(24, 124, 'Transfer', 23000.00, '2026-03-12'),
(25, 125, 'Credit',   11500.00, '2026-05-28'),
(26, 126, 'Transfer', 15000.00, '2026-06-01'),
(27, 127, 'Credit',   25000.00, '2026-06-02'),
(28, 128, 'Debit',    16000.00, '2026-06-04');
-- ============================================================
-- 7. Products Table
-- ============================================================
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1,  'Gaming Laptop',        'Electronics',  89999.00),
(2,  'Bluetooth Speaker',    'Electronics',   3499.00),
(3,  'Wireless Earbuds',     'Electronics',   7999.00),
(4,  'Smart TV 55"',         'Electronics',  54999.00),
(5,  'USB-C Hub',            'Electronics',   1899.00),
(6,  'Running Shoes',        'Footwear',       4599.00),
(7,  'Leather Sandals',      'Footwear',       2199.00),
(8,  'Formal Shoes',         'Footwear',       5999.00),
(9,  'Sports Sneakers',      'Footwear',       7499.00),
(10, 'Flip Flops',           'Footwear',        799.00),
(11, 'Sofa Set',             'Furniture',     42000.00),
(12, 'Coffee Table',         'Furniture',      8500.00),
(13, 'Bookshelf',            'Furniture',      6200.00),
(14, 'King Bed Frame',       'Furniture',     28000.00),
(15, 'Office Chair',         'Furniture',     12500.00),
(16, 'Face Wash',            'Beauty',           499.00),
(17, 'Hair Dryer',           'Beauty',          2399.00),
(18, 'Sunscreen SPF50',      'Beauty',           899.00),
(19, 'Perfume 100ml',        'Beauty',          4999.00),
(20, 'Lip Balm Pack',        'Beauty',           299.00),
(21, 'Protein Powder 1kg',   'Fitness',         3299.00),
(22, 'Yoga Mat',             'Fitness',         1499.00),
(23, 'Resistance Bands Set', 'Fitness',          849.00),
(24, 'Dumbbell Set 10kg',    'Fitness',         4899.00),
(25, 'Jump Rope',            'Fitness',          399.00);


-- ============================================================
-- 8. Employees Table
-- ============================================================
INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary) VALUES
(1,  'Rajesh Kumar',    'Engineering',  85000.00),
(2,  'Anita Sharma',    'Engineering',  92000.00),
(3,  'Vijay Nair',      'Engineering',  78000.00),
(4,  'Priya Singh',     'Engineering',  88000.00),
(5,  'Sanjay Rao',      'Engineering',  95000.00),
(6,  'Meena Gupta',     'Marketing',    60000.00),
(7,  'Kiran Patel',     'Marketing',    67000.00),
(8,  'Sunita Das',      'Marketing',    54000.00),
(9,  'Arun Tiwari',     'Marketing',    71000.00),
(10, 'Deepa Nair',      'Marketing',    63000.00),
(11, 'Ramesh Iyer',     'Finance',      75000.00),
(12, 'Pooja Verma',     'Finance',      82000.00),
(13, 'Harish Joshi',    'Finance',      79000.00),
(14, 'Kavya Reddy',     'Finance',      86000.00),
(15, 'Nitin Yadav',     'Finance',      73000.00),
(16, 'Swati Mishra',    'HR',           48000.00),
(17, 'Girish Bose',     'HR',           52000.00),
(18, 'Lalita Menon',    'HR',           45000.00),
(19, 'Suresh Kulkarni', 'HR',           50000.00),
(20, 'Rekha Shah',      'HR',           47000.00),
(21, 'Tarun Dubey',     'Sales',        58000.00),
(22, 'Nisha Pillai',    'Sales',        65000.00),
(23, 'Arvind Jain',     'Sales',        61000.00),
(24, 'Geeta Kaur',      'Sales',        69000.00),
(25, 'Manoj Tripathi',  'Sales',        55000.00);


-- ============================================================
-- 9. CallRecords Table
-- ============================================================
INSERT INTO CallRecords (CallID, CustomerID, DurationSeconds, CallDate) VALUES
(1,  201, '00:05:30', '2025-06-01'),
(2,  201, '00:06:10', '2025-06-03'),
(3,  201, '00:04:50', '2025-06-05'),
(4,  202, '00:02:10', '2025-06-01'),
(5,  202, '00:03:00', '2025-06-04'),
(6,  202, '00:02:40', '2025-06-07'),
(7,  203, '00:07:20', '2025-06-02'),
(8,  203, '00:06:45', '2025-06-06'),
(9,  203, '00:08:00', '2025-06-09'),
(10, 204, '00:01:50', '2025-06-01'),
(11, 204, '00:02:30', '2025-06-03'),
(12, 204, '00:03:10', '2025-06-08'),
(13, 205, '00:05:00', '2025-06-02'),
(14, 205, '00:05:30', '2025-06-05'),
(15, 205, '00:06:00', '2025-06-10'),
(16, 206, '00:04:00', '2025-06-03'),
(17, 206, '00:03:30', '2025-06-06'),
(18, 206, '00:04:20', '2025-06-09'),
(19, 207, '00:09:00', '2025-06-04'),
(20, 207, '00:08:30', '2025-06-07'),
(21, 207, '00:07:45', '2025-06-11'),
(22, 208, '00:02:00', '2025-06-01'),
(23, 208, '00:01:45', '2025-06-04'),
(24, 208, '00:02:15', '2025-06-08'),
(25, 209, '00:05:45', '2025-06-05');


-- ============================================================
-- 10. Patients Table
-- ============================================================
INSERT INTO Patients (PatientID, PatientName, Disease, AdmissionDate) VALUES
(1,  'Ramesh Kumar',    'Diabetes',             '2024-01-02'),
(2,  'Sunita Devi',     'Hypertension',         '2024-01-05'),
(3,  'Arjun Nair',      'Asthma',               '2024-01-09'),
(4,  'Kavitha Rao',     'Typhoid',              '2024-01-13'),
(5,  'Mohan Pillai',    'Malaria',              '2024-01-17'),
(6,  'Geeta Sharma',    'Dengue',               '2024-02-01'),
(7,  'Sanjay Iyer',     'Arthritis',            '2024-02-05'),
(8,  'Leela Menon',     'Fracture - Right Leg', '2024-02-09'),
(9,  'Ravi Verma',      'Pneumonia',            '2024-02-13'),
(10, 'Anita Gupta',     'Appendicitis',         '2024-02-17'),
(11, 'Suresh Reddy',    'Kidney Stone',         '2024-03-01'),
(12, 'Priya Das',       'Migraine',             '2024-03-05'),
(13, 'Harish Babu',     'Jaundice',             '2024-03-09'),
(14, 'Meena Joshi',     'Chickenpox',           '2024-03-13'),
(15, 'Vikram Singh',    'Gastritis',            '2024-03-17'),
(16, 'Rajesh Malhotra',   'Bronchitis',          '2026-05-01'),
(17, 'Sneha Kapoor',      'Food Poisoning',      '2026-05-03'),
(18, 'Amit Chatterjee',   'Skin Allergy',        '2026-05-05'),
(19, 'Neha Sinha',        'Gallbladder Stone',   '2026-05-08'),
(20, 'Karan Mehta',       'Tuberculosis',        '2026-05-10'),
(21, 'Pooja Bansal',      'Vertigo',             '2026-05-13'),
(22, 'Deepak Yadav',      'Heartburn',           '2026-05-16'),
(23, 'Shalini Prasad',    'Sinusitis',           '2026-05-19'),
(24, 'Manoj Patil',       'Conjunctivitis',      '2026-05-22'),
(25, 'Anjali Deshmukh',   'Urinary Infection',   '2026-05-25');

-- ============================================================
-- 11. Inventory Table
-- ============================================================
INSERT INTO Inventory (ProductID, ProductName, Quantity, ReorderLevel) VALUES
(1,  'Laptop',            5,   20),
(2,  'Mouse',            45,   30),
(3,  'Keyboard',          8,   25),
(4,  'Monitor',          15,   10),
(5,  'USB Cable',         3,   50),
(6,  'HDMI Cable',       12,   40),
(7,  'Webcam',           22,   15),
(8,  'Headset',           2,   20),
(9,  'Desk Lamp',        60,   25),
(10, 'Notepad (pack)',    7,   30),
(11, 'Pen Set',          80,   40),
(12, 'Stapler',           4,   15),
(13, 'Printer Paper',    10,   50),
(14, 'Toner Cartridge',   1,   10),
(15, 'A4 File Folder',   35,   20),
(16, 'External SSD',      6,   25),
(17, 'Router',           18,   12),
(18, 'Power Strip',       3,   20),
(19, 'Chair Cushion',    50,   15),
(20, 'Laptop Stand',      9,   30),
(21, 'Screen Cleaner',    2,   10),
(22, 'Drawing Tablet',   14,   10),
(23, 'Cable Organizer',   5,   25),
(24, 'Surge Protector',  28,   20),
(25, 'Label Maker',       3,   15); 


-- ============================================================
-- 12. Loans Table
-- ============================================================
INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate) VALUES
(1,  301, 500000.00,  8.50),
(2,  302, 250000.00,  9.00),
(3,  303, 100000.00, 10.50),
(4,  304, 750000.00,  7.75),
(5,  305, 1000000.00, 7.25),
(6,  306, 350000.00,  9.50),
(7,  307, 200000.00, 11.00),
(8,  308, 450000.00,  8.75),
(9,  309, 600000.00,  8.25),
(10, 310, 150000.00, 10.00),
(11, 311, 800000.00,  7.50),
(12, 312, 125000.00, 10.75),
(13, 313, 900000.00,  7.00),
(14, 314, 300000.00,  9.25),
(15, 315, 175000.00, 10.25),
(16, 316, 550000.00,  8.00),
(17, 317, 400000.00,  9.75),
(18, 318, 650000.00,  8.10),
(19, 319, 275000.00,  9.90),
(20, 320, 1200000.00, 6.75),
(21, 321, 85000.00,  11.50),
(22, 322, 425000.00,  8.60),
(23, 323, 700000.00,  7.90),
(24, 324, 225000.00,  9.40),
(25, 325, 475000.00,  8.30);


-- ============================================================
-- 13. Courses Table
-- ============================================================
INSERT INTO Courses (CourseID, CourseName, Fees) VALUES
(1,  'Python Programming',      4999.50),
(2,  'Web Development',         7499.75),
(3,  'Data Science',           12999.99),
(4,  'Machine Learning',       15999.49),
(5,  'Cloud Computing',         9999.25),
(6,  'Cyber Security',          8499.80),
(7,  'UI/UX Design',            5999.30),
(8,  'Digital Marketing',       3999.60),
(9,  'Business Analytics',     10999.70),
(10, 'Java Programming',        4499.55),
(11, 'React JS',                6499.20),
(12, 'Node JS',                 6999.40),
(13, 'Full Stack Development', 18999.90),
(14, 'DevOps',                 13499.65),
(15, 'SQL & Database',          3499.45),
(16, 'Ethical Hacking',         7999.85),
(17, 'iOS Development',        11499.35),
(18, 'Android Development',    11999.10),
(19, 'Blockchain',             14499.95),
(20, 'Artificial Intelligence',19999.50),
(21, 'Power BI',                4999.15),
(22, 'Tableau',                 5499.80),
(23, 'Excel Advanced',          2499.60),
(24, 'Project Management',      8999.25),
(25, 'Agile & Scrum',           6499.75);


-- ============================================================
-- 14. Customers Table
-- ============================================================
INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1,  'Arjun Sharma',    'Mumbai'),
(2,  'Priya Patel',     'Delhi'),
(3,  'Rohit Verma',     'Bangalore'),
(4,  'Sneha Iyer',      'Chennai'),
(5,  'Karan Joshi',     'Hyderabad'),
(6,  'Divya Nair',      'Pune'),
(7,  'Amit Rao',        'Mumbai'),
(8,  'Pooja Gupta',     'Kolkata'),
(9,  'Suresh Pillai',   'Delhi'),
(10, 'Meera Das',       'Bangalore'),
(11, 'Vikram Singh',    'Hyderabad'),
(12, 'Anjali Patel',    'Chennai'),
(13, 'Nikhil Kumar',    'Mumbai'),
(14, 'Ritu Sharma',     'Pune'),
(15, 'Sanjay Yadav',    'Delhi'),
(16, 'Lakshmi Reddy',   'Bangalore'),
(17, 'Rahul Tiwari',    'Kolkata'),
(18, 'Preethi Nair',    'Mumbai'),
(19, 'Aruna Mishra',    'Hyderabad'),
(20, 'Swati Kulkarni',  'Pune'),
(21, 'Deepak Bose',     'Delhi'),
(22, 'Kavya Menon',     'Chennai'),
(23, 'Harish Jain',     'Bangalore'),
(24, 'Tanvi Shah',      'Mumbai'),
(25, 'Manish Dubey',    'Kolkata');

-- ============================================================
-- 15. WatchHistory Table
-- ============================================================
INSERT INTO WatchHistory (UserID, MovieID, WatchMinutes, WatchDate) VALUES
(1,  1,  '01:45:00', '2025-06-01'),
(2,  2,  '02:10:00', '2025-06-02'),
(3,  3,  '01:30:00', '2025-06-03'),
(4,  4,  '02:00:00', '2025-06-04'),
(5,  5,  '01:55:00', '2025-06-05'),
(6,  6,  '02:20:00', '2025-06-06'),
(7,  7,  '01:40:00', '2025-06-07'),
(8,  8,  '00:50:00', '2025-06-08'),
(9,  9,  '02:35:00', '2025-06-09'),
(10, 10, '01:15:00', '2025-06-10'),
(11, 11, '02:50:00', '2025-06-11'),
(12, 12, '01:25:00', '2025-06-12'),
(13, 13, '02:05:00', '2025-06-13'),
(14, 14, '01:50:00', '2025-06-14'),
(15, 15, '02:15:00', '2025-06-15'),
(16, 16, '01:00:00', '2025-06-16'),
(17, 17, '02:40:00', '2025-06-17'),
(18, 18, '01:35:00', '2025-06-18'),
(19, 19, '02:55:00', '2025-06-19'),
(20, 20, '01:45:00', '2025-06-20'),
(21, 21, '02:10:00', '2025-06-21'),
(22, 22, '00:55:00', '2025-06-22'),
(23, 23, '02:25:00', '2025-06-23'),
(24, 24, '01:20:00', '2025-06-24'),
(25, 25, '02:45:00', '2025-06-25'),
(26, 26, '01:50:00', '2026-06-01'),
(27, 27, '02:05:00', '2026-06-03'),
(28, 28, '01:25:00', '2026-06-05'),
(29, 29, '02:30:00', '2026-06-07'),
(30, 30, '01:40:00', '2026-06-09');

-- ============================================================
-- 16. Employees_2 (HR table)
-- ============================================================
INSERT INTO Employees_2 (EmployeeID, EmployeeName, Salary) VALUES
(1,  'Rajesh Kumar',     85000.00),
(2,  'Anita Sharma',     92000.00),
(3,  'Vijay Nair',       35000.00),
(4,  'Priya Singh',      62000.00),
(5,  'Sanjay Rao',       75000.00),
(6,  'Meena Gupta',      48000.00),
(7,  'Kiran Patel',      28000.00),
(8,  'Sunita Das',       55000.00),
(9,  'Arun Tiwari',      80000.00),
(10, 'Deepa Nair',       32000.00),
(11, 'Ramesh Iyer',      68000.00),
(12, 'Pooja Verma',      95000.00),
(13, 'Harish Joshi',     43000.00),
(14, 'Kavya Reddy',      25000.00),
(15, 'Nitin Yadav',      71000.00),
(16, 'Swati Mishra',     58000.00),
(17, 'Girish Bose',      38000.00),
(18, 'Lalita Menon',     66000.00),
(19, 'Suresh Kulkarni',  88000.00),
(20, 'Rekha Shah',       42000.00),
(21, 'Tarun Dubey',      29000.00),
(22, 'Nisha Pillai',     74000.00),
(23, 'Arvind Jain',      51000.00),
(24, 'Geeta Kaur',       33000.00),
(25, 'Manoj Tripathi',   78000.00);


-- ============================================================
-- 17. Leads Table
-- ============================================================
INSERT INTO Leads (LeadID, LeadName, Source) VALUES
(1,  'Arjun Sharma',    'Google Ads'),
(2,  'Priya Mehta',     'Facebook'),
(3,  'Rohit Verma',     'LinkedIn'),
(4,  'Sneha Iyer',      'Email Campaign'),
(5,  'Karan Joshi',     'Referral'),
(6,  'Divya Nair',      'Google Ads'),
(7,  'Amit Rao',        'Instagram'),
(8,  'Pooja Gupta',     'Cold Call'),
(9,  'Suresh Pillai',   'LinkedIn'),
(10, 'Meera Das',       'Email Campaign'),
(11, 'Vikram Singh',    'Facebook'),
(12, 'Anjali Patel',    'Referral'),
(13, 'Nikhil Kumar',    'Google Ads'),
(14, 'Ritu Sharma',     'Instagram'),
(15, 'Sanjay Yadav',    'Cold Call'),
(16, 'Lakshmi Reddy',   'Facebook'),
(17, 'Rahul Tiwari',    'LinkedIn'),
(18, 'Preethi Nair',    'Email Campaign'),
(19, 'Aruna Mishra',    'Referral'),
(20, 'Swati Kulkarni',  'Google Ads'),
(21, 'Deepak Bose',     'Cold Call'),
(22, 'Kavya Menon',     'Instagram'),
(23, 'Harish Jain',     'LinkedIn'),
(24, 'Tanvi Shah',      'Referral'),
(25, 'Manish Dubey',    'Email Campaign');


-- ============================================================
-- 18. Complaints Table
-- ============================================================
INSERT INTO Complaints (ComplaintID, CustomerName, Description) VALUES
(1,  'Arjun Sharma',    'There was a significant delay in delivering my order.'),
(2,  'Priya Mehta',     'My package arrived damaged and the box was torn.'),
(3,  'Rohit Verma',     'I experienced a delay of over a week without any update.'),
(4,  'Sneha Iyer',      'The product I received does not match the description.'),
(5,  'Karan Joshi',     'Customer support was unresponsive to my multiple calls.'),
(6,  'Divya Nair',      'The shipment delay caused me to miss an important deadline.'),
(7,  'Amit Rao',        'Wrong item was delivered to my address.'),
(8,  'Pooja Gupta',     'I was charged twice for the same order.'),
(9,  'Suresh Pillai',   'There is always a delay when I order from this platform.'),
(10, 'Meera Das',       'The refund was processed successfully, no issues.'),
(11, 'Vikram Singh',    'Persistent delay in processing my refund request.'),
(12, 'Anjali Patel',    'The quality of the product was below expectations.'),
(13, 'Nikhil Kumar',    'No tracking update for 5 days — possible delivery delay.'),
(14, 'Ritu Sharma',     'App crashes every time I try to place an order.'),
(15, 'Sanjay Yadav',    'Item was out of stock but still shown as available.'),
(16, 'Lakshmi Reddy',   'Experienced unexpected delay due to logistics issues.'),
(17, 'Rahul Tiwari',    'Received an expired product in my grocery order.'),
(18, 'Preethi Nair',    'Payment failed but amount was deducted from account.'),
(19, 'Aruna Mishra',    'The delay in response from support is unacceptable.'),
(20, 'Swati Kulkarni',  'Product packaging was poor and items were missing.'),
(21, 'Deepak Bose',     'No delay — everything was delivered on time, but wrong size.'),
(22, 'Kavya Menon',     'I received a used item instead of a new one.'),
(23, 'Harish Jain',     'Constant delay in the exchange process for my returned item.'),
(24, 'Tanvi Shah',      'Login issues — I cannot access my account at all.'),
(25, 'Manish Dubey',    'The delay in updating my address led to wrong delivery.');

-- ============================================================
-- 19. Members Table
-- ============================================================
INSERT INTO Members (MemberID, MemberName, JoinDate) VALUES
(1,  'Arjun Sharma',    '2021-01-15'),
(2,  'Priya Mehta',     '2020-03-22'),
(3,  'Rohit Verma',     '2022-07-08'),
(4,  'Sneha Iyer',      '2019-11-30'),
(5,  'Karan Joshi',     '2023-04-17'),
(6,  'Divya Nair',      '2021-09-05'),
(7,  'Amit Rao',        '2018-06-28'),
(8,  'Pooja Gupta',     '2022-02-14'),
(9,  'Suresh Pillai',   '2020-08-19'),
(10, 'Meera Das',       '2023-12-01'),
(11, 'Vikram Singh',    '2019-05-10'),
(12, 'Anjali Patel',    '2021-10-25'),
(13, 'Nikhil Kumar',    '2022-01-07'),
(14, 'Ritu Sharma',     '2020-07-16'),
(15, 'Sanjay Yadav',    '2018-03-31'),
(16, 'Lakshmi Reddy',   '2023-06-20'),
(17, 'Rahul Tiwari',    '2021-04-12'),
(18, 'Preethi Nair',    '2019-09-03'),
(19, 'Aruna Mishra',    '2022-11-18'),
(20, 'Swati Kulkarni',  '2020-02-29'),
(21, 'Deepak Bose',     '2023-08-14'),
(22, 'Kavya Menon',     '2018-12-05'),
(23, 'Harish Jain',     '2021-07-22'),
(24, 'Tanvi Shah',      '2022-05-09'),
(25, 'Manish Dubey',    '2019-01-27');


-- ============================================================
-- 20. Shipments Table
-- ============================================================
INSERT INTO Shipments (ShipmentID, RouteName, DistanceKM) VALUES
(1,  'Mumbai - Delhi',          1400.00),
(2,  'Delhi - Bangalore',       2150.50),
(3,  'Chennai - Kolkata',       1660.75),
(4,  'Hyderabad - Pune',         560.25),
(5,  'Bangalore - Mumbai',      1000.00),
(6,  'Jaipur - Ahmedabad',       650.80),
(7,  'Lucknow - Patna',          350.40),
(8,  'Chandigarh - Delhi',       250.00),
(9,  'Kochi - Chennai',          700.60),
(10, 'Guwahati - Kolkata',      1000.90),
(11, 'Bhopal - Nagpur',          380.20),
(12, 'Indore - Surat',           450.75),
(13, 'Visakhapatnam - Hyderabad',600.30),
(14, 'Amritsar - Ludhiana',       80.00),
(15, 'Mysore - Bangalore',       150.50),
(16, 'Vadodara - Rajkot',        200.00),
(17, 'Coimbatore - Madurai',     215.40),
(18, 'Nashik - Mumbai',          170.80),
(19, 'Agra - Mathura',            55.00),
(20, 'Ranchi - Dhanbad',          80.60),
(21, 'Dehradun - Haridwar',       54.00),
(22, 'Mangalore - Goa',          386.00),
(23, 'Trichy - Salem',           188.25),
(24, 'Jodhpur - Jaisalmer',      285.00),
(25, 'Bhubaneswar - Cuttack',     28.50);

