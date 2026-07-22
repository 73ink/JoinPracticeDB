-- Task 15: Mixed JOIN Challenge


-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Add data into Courses table
INSERT INTO Courses (CourseID, CourseName)
VALUES
(1, 'SQL Basics'),
(2, 'Java Fundamentals'),
(3, 'HTML and CSS'),
(4, 'Spring Boot'),
(5, 'Cybersecurity Basics');

-- Add data into Enrollments table
-- Some students are enrolled in courses
-- Some students will have no enrollment to test LEFT JOIN
INSERT INTO Enrollments (StudentID, CourseID)
VALUES
(112, 1),
(113, 2),
(114, 3),
(115, 4),
(116, 1),
(117, 5),
(118, 2),
(211, 3),
(212, 4);

-- Check Students table
SELECT * FROM Students;

-- Check Classes table
SELECT * FROM Classes;

-- Check Courses table
SELECT * FROM Courses;

-- Check Enrollments table
SELECT * FROM Enrollments;
