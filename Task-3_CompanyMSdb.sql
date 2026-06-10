-- using the same database that was created in task 1

USE CompanyMSdb;

UPDATE Employees
SET Salary = Salary * 1.10
WHERE DepartmentID = 2;

SELECT Salary FROM Employees WHERE DepartmentID = 2;


UPDATE Departments
SET DepartmentName = 'Digital and Marketing'
WHERE DepartmentID = 4;
SELECT DepartmentName FROM Departments WHERE DepartmentID = 4;

UPDATE Projects
SET ProjectName = 'Company Website Development'
WHERE ProjectID = 202;

SELECT ProjectName FROM ProjectS WHERE ProjectName = 'Company Website Development';


UPDATE Employees
SET DepartmentID = 3
WHERE EmployeeID = 110;

SELECT DepartmentID FROM Employees WHERE EmployeeID = 110;

UPDATE Employees
SET Salary = 800.00
WHERE EmployeeID = 101;

SELECT * FROM Employees WHERE EmployeeID = 101;

