-- Task 13: INNER JOIN with Aggregation


-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Add data into OrderDetails table
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(1, 201, 1, 2),
(2, 201, 2, 3),
(3, 202, 3, 1),
(4, 202, 4, 4),
(5, 203, 1, 1),
(6, 203, 5, 2),
(7, 204, 2, 5);

-- Check Orders table
SELECT * FROM Orders;

-- Check OrderDetails table
SELECT * FROM OrderDetails;

-- INNER JOIN with SUM and GROUP BY
-- This shows total quantity for each order
SELECT 
    Orders.OrderID,
    SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Orders
INNER JOIN OrderDetails
ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.OrderID
ORDER BY TotalQuantity DESC;