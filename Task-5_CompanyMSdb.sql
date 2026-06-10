-- using the same database that was created in task 1

USE CompanyMSdb;

-- 1. Delete an employee by EmployeeID

DELETE FROM Employees
WHERE EmployeeID = 109;

SELECT * FROM Employees WHERE EmployeeID = 109;


-- 2. Remove employees from a specific department

DELETE FROM Employees
WHERE DepartmentID = 1;

SELECT * FROM Employees WHERE DepartmentID = 1;


-- 3. Delete a project that is no longer active

DELETE FROM Projects
WHERE ProjectID = 205;

SELECT * FROM Projects WHERE ProjectID = 205;


-- 4. Remove a department after reassigning or deleting related data
-- First delete related employees and projects, then delete the department.

DELETE FROM Employees
WHERE DepartmentID = 5;

SELECT * FROM Employees WHERE DepartmentID = 5;

DELETE FROM Projects
WHERE DepartmentID = 5;

SELECT * FROM Projects WHERE DepartmentID = 5;

DELETE FROM Departments
WHERE DepartmentID = 5;

SELECT * FROM Departments WHERE DepartmentID = 5;


-- 5. Delete employees with salary below a specific value

DELETE FROM Employees
WHERE Salary < 850.00;

SELECT * FROM Employees WHERE Salary < 850.00;