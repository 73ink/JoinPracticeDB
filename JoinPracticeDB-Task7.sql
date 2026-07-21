
-- Task 7: INNER JOIN with Multiple Tables

-- Tables: Students, Classes, Teachers (already created with task 1, onle create Teachers)


-- Create Teachers table
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50)
);

-- Add TeacherID column to Classes table
ALTER TABLE Classes
ADD TeacherID INT;

-- Add foreign key between Classes and Teachers
ALTER TABLE Classes
ADD FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID);

-- Add data into Teachers table
INSERT INTO Teachers (TeacherID, TeacherName)
VALUES
(1, 'Mr. Ahmed Al Balushi'),
(2, 'Ms. Sara Al Hinai'),
(3, 'Mr. Khalid Al Abri'),
(4, 'Ms. Fatma Al Saadi'),
(5, 'Mr. Yousuf Al Kindi');

-- Assign teachers to existing classes
UPDATE Classes
SET TeacherID = 1
WHERE ClassID = 100;

UPDATE Classes
SET TeacherID = 2
WHERE ClassID = 102;

UPDATE Classes
SET TeacherID = 3
WHERE ClassID = 103;

UPDATE Classes
SET TeacherID = 4
WHERE ClassID = 104;

UPDATE Classes
SET TeacherID = 5
WHERE ClassID = 105;

-- Check Teachers table
SELECT * FROM Teachers;

-- Check Classes table after adding TeacherID
SELECT * FROM Classes;

-- INNER JOIN with multiple tables
-- This shows student name, class name, and teacher name
SELECT Students.Name, Classes.ClassName, Teachers.TeacherName
FROM Students
INNER JOIN Classes
ON Students.ClassID = Classes.ClassID
INNER JOIN Teachers
ON Classes.TeacherID = Teachers.TeacherID
ORDER BY Classes.ClassName;