-- Task 8: LEFT JOIN with Missing Data Check

-- Create Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(50)
);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Add data into Authors table
INSERT INTO Authors (AuthorID, AuthorName)
VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'William Shakespeare'),
(4, 'Agatha Christie'),
(5, 'Jane Austen');

-- Add data into Books table
-- Some books have NULL AuthorID to test missing author data
INSERT INTO Books (BookID, Title, AuthorID)
VALUES
(101, 'Harry Potter', 1),
(102, 'Animal Farm', 2),
(103, 'Hamlet', 3),
(104, 'Murder on the Orient Express', 4),
(105, 'Pride and Prejudice', 5),
(106, 'Unknown History Book', NULL),
(107, 'Mystery of Oman', NULL);

-- Check Authors table
SELECT * FROM Authors;

-- Check Books table
SELECT * FROM Books;

