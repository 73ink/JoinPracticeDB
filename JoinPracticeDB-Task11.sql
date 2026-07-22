
-- Task 11: SELF JOIN for Hierarchy Levels


-- Check EmployeeManagers table
SELECT * FROM EmployeeManagers;

-- SELF JOIN twice
-- e = employee
-- m = direct manager
-- tm = top manager / manager's manager
SELECT 
    e.EmployeeName AS EmployeeName,
    m.EmployeeName AS ManagerName,
    tm.EmployeeName AS TopManagerName
FROM EmployeeManagers e
LEFT JOIN EmployeeManagers m
ON e.ManagerID = m.EmployeeID
LEFT JOIN EmployeeManagers tm
ON m.ManagerID = tm.EmployeeID
ORDER BY e.EmployeeName;