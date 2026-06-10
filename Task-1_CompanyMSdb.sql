CREATE DATABASE  CompanyMSdb;

USE CompanyMSdb;

CREATE TABLE Departments(
	DepartmentID INT PRIMARY KEY,
	DepartmentName VARCHAR (50)
	); 
	
CREATE TABLE Employees (
	EmployeeID INT Primary Key,
	Name VARCHAR (50),
	DepartmentID INT,
	Salary DECIMAL(10,2),

	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
	); 

CREATE TABLE Projects(
	ProjectID INT PRIMARY KEY,
	ProjectName VARCHAR (50),
	DepartmentID INT,

	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
	);
	
-- insert statements for each table

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Human Resources'),
(2, 'Information Technology'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Operations');

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary)
VALUES
(101, 'Ahmed Al Balushi', 1, 750.00),
(102, 'Sara Al Hinai', 1, 820.00),
(103, 'Mohammed Al Riyami', 2, 950.00),
(104, 'Fatma Al Saadi', 2, 1000.00),
(105, 'Ali Al Mukhaini', 2, 880.00),
(106, 'Mariam Al Zadjali', 3, 900.00),
(107, 'Khalid Al Abri', 3, 870.00),
(108, 'Noor Al Amri', 4, 780.00),
(109, 'Huda Al Lawati', 4, 800.00),
(110, 'Yousuf Al Kindi', 5, 850.00);

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID)
VALUES
(201, 'Employee Training System', 1),
(202, 'Company Website Upgrade', 2),
(203, 'Annual Budget Review', 3),
(204, 'Social Media Campaign', 4),
(205, 'Warehouse Process Improvement', 5);

-- checking the data after INSERT INTO	
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Projects;