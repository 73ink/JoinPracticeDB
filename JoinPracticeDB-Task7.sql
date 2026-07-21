
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

