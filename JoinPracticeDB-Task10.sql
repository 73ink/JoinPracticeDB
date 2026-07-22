
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

