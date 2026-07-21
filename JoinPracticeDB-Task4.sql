-- Task 4: FULL OUTER JOIN
-- Create Products and Sales tables

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT
);