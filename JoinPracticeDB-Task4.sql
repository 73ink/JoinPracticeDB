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

-- Add data into Products table

INSERT INTO Products (ProductID, ProductName)
VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor'),
(5, 'Printer');

-- Add data into Sales table
-- ProductID 6 does not exist in Products to test FULL OUTER JOIN

INSERT INTO Sales (SaleID, ProductID)
VALUES
(301, 1),
(302, 2),
(303, 2),
(304, 6);

-- check tables after create
SELECT * FROM Products;

SELECT * FROM Sales;

-- Task 4 query: FULL OUTER JOIN 
SELECT Products.ProductName, Sales.SaleID
FROM Products
FULL OUTER JOIN Sales
ON Products.ProductID = Sales.ProductID
ORDER BY Products.ProductName;