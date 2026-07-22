-- Task 12: CROSS JOIN with Business Scenario


-- Create StoreProducts table
CREATE TABLE StoreProducts (
    ProductName VARCHAR(50)
);

-- Create Stores table
CREATE TABLE Stores (
    StoreName VARCHAR(50)
);

-- Add data into StoreProducts table
INSERT INTO StoreProducts (ProductName)
VALUES
('Laptop'),
('Mouse'),
('Keyboard'),
('Monitor'),
('Printer');

-- Add data into Stores table
INSERT INTO Stores (StoreName)
VALUES
('Muscat Branch'),
('Sohar Branch'),
('Nizwa Branch'),
('Salalah Branch');

-- Check StoreProducts table
SELECT * FROM StoreProducts;

-- Check Stores table
SELECT * FROM Stores;

-- CROSS JOIN query
-- This shows every product available for every store
SELECT StoreProducts.ProductName, Stores.StoreName
FROM StoreProducts
CROSS JOIN Stores
ORDER BY Stores.StoreName, StoreProducts.ProductName;