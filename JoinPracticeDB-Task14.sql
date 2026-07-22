-- Task 14: LEFT JOIN with COUNT


-- Check Customers table
SELECT * FROM Customers;

-- Check Orders table
SELECT * FROM Orders;

-- LEFT JOIN with COUNT
-- This includes customers with zero orders
SELECT 
    Customers.CustomerID,
    Customers.CustomerName AS Name,
    COUNT(Orders.OrderID) AS OrderCount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
ORDER BY OrderCount DESC;