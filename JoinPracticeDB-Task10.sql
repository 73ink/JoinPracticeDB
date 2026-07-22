
-- Task 10: FULL OUTER JOIN with Data Comparison


-- Drop old Sales table if it was created for Task 4
-- This is because Task 10 needs Sales(ProductID, SoldQty)
DROP TABLE Sales;

-- Create Inventory table
CREATE TABLE Inventory (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    StockQty INT
);

-- Create Sales table
CREATE TABLE Sales (
    ProductID INT,
    SoldQty INT
);

-- Add data into Inventory table
INSERT INTO Inventory (ProductID, ProductName, StockQty)
VALUES
(1, 'Laptop', 20),
(2, 'Mouse', 100),
(3, 'Keyboard', 60),
(4, 'Monitor', 35),
(5, 'Printer', 15);

-- Add data into Sales table
-- ProductID 6 does not exist in Inventory to test FULL OUTER JOIN
INSERT INTO Sales (ProductID, SoldQty)
VALUES
(1, 5),
(2, 25),
(3, 10),
(6, 8);
