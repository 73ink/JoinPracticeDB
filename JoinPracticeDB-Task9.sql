-- Task 9: RIGHT JOIN with Filtering

-- Tables: Payments, Orders


-- Create Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Add data into Payments table
-- Some orders will not have payments
INSERT INTO Payments (PaymentID, OrderID, Amount)
VALUES
(1, 201, 25.500),
(2, 202, 14.750),
(3, 203, 30.000);

-- Check Orders table
SELECT * FROM Orders;

-- Check Payments table
SELECT * FROM Payments;

-- RIGHT JOIN query with filtering
-- This shows all orders, including orders without payment
SELECT Orders.OrderID, Payments.Amount
FROM Payments
RIGHT JOIN Orders
ON Payments.OrderID = Orders.OrderID
WHERE Payments.Amount IS NULL
   OR Payments.Amount > 0
ORDER BY Orders.OrderID;