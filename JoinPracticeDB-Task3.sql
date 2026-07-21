-- Task 3: RIGHT JOIN
-- Create Orders and Customers tables

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Add data into Customers table

INSERT INTO Customers (CustomerID, CustomerName)
VALUES
(1, 'Ahmed Al Balushi'),
(2, 'Sara Al Hinai'),
(3, 'Mohammed Al Riyami'),
(4, 'Fatma Al Saadi'),
(5, 'Ali Al Mukhaini');

-- Add data into Orders table
-- Customer 4 and 5 have no orders to test RIGHT JOIN

INSERT INTO Orders (OrderID, CustomerID)
VALUES
(201, 1),
(202, 1),
(203, 2),
(204, 3);
