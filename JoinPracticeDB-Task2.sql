-- Task 2: LEFT JOIN
-- Create Employees and Departments tables
USE JoinPracticeDB;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Add data into Departments table

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Human Resources'),
(2, 'Information Technology'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Operations');

-- Add data into Employees table
-- Some employees have NULL DepartmentID to test LEFT JOIN

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(101, 'Ahmed Al Balushi', 1),
(102, 'Sara Al Hinai', 2),
(103, 'Mohammed Al Riyami', 2),
(104, 'Fatma Al Saadi', 3),
(105, 'Ali Al Mukhaini', 4),
(106, 'Mariam Al Zadjali', 5),
(107, 'Khalid Al Abri', NULL),
(108, 'Noor Al Amri', NULL);

-- Check tables that was created
SELECT * FROM Departments;

SELECT * FROM Employees;
-- Task 2 query: LEFT JOIN
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
ORDER BY Employees.EmployeeName;