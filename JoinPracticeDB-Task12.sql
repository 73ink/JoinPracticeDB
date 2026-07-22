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

