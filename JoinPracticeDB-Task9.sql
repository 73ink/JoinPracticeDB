-- Task 9: RIGHT JOIN with Filtering

-- Tables: Payments, Orders


-- Create Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

