-- Task 5: SELF JOIN
-- Create EmployeeManagers table

CREATE TABLE EmployeeManagers (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);
-- Add data into EmployeeManagers table
-- ManagerID refers to another EmployeeID in the same table

INSERT INTO EmployeeManagers (EmployeeID, EmployeeName, ManagerID)
VALUES
(1, 'Ahmed Al Balushi', NULL),
(2, 'Sara Al Hinai', 1),
(3, 'Mohammed Al Riyami', 1),
(4, 'Fatma Al Saadi', 2),
(5, 'Ali Al Mukhaini', 2),
(6, 'Mariam Al Zadjali', 3),
(7, 'Khalid Al Abri', 3);

-- review the table after inserting the data
SELECT * FROM EmployeeManagers;

