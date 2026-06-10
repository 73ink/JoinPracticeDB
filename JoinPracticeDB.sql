-- we create a database first
CREATE DATABASE JoinPracticeDB;
-- open the database
USE JoinPracticeDB;
--create the two tables of Student, Classes
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
-- add date into the two tables 

INSERT INTO Classes (ClassID, ClassName)
VALUES
(100, 'Database Systems'),
(102, 'Java Programming'),
(103, 'Web Development'),
(104, 'Computer Networks'),
(105, 'Software Engineering');

INSERT INTO Students (StudentID, Name, ClassID)
VALUES
(112, 'Ahmed Al Balushi', 100),
(113, 'Sara Al Hinai', 105),
(114, 'Mohammed Al Riyami', 103),
(115, 'Fatma Al Saadi', 102),
(116, 'Ali Al Mukhaini', 103),
(117, 'Mariam Al Zadjali', 102),
(118, 'Khalid Al Abri', 104),
(211, 'Noor Al Amri', 104),
(212, 'Huda Al Lawati', 105),
(110, 'Yousuf Al Kindi', 105),
(213, 'Jasim Al Jabri', 100),
(214, 'Ahmed Khalfan', 100),
(215, 'Yousuf Salim', 102);

-- review the tables after insertion
SELECT * FROM Classes;

SELECT * FROM Students;