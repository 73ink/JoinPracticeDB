
-- Create Colors table
CREATE TABLE Colors (
    ColorID INT PRIMARY KEY,
    ColorName VARCHAR(50)
);

-- Create Sizes table
CREATE TABLE Sizes (
    SizeID INT PRIMARY KEY,
    SizeName VARCHAR(50)
);

-- Add data into Colors table
INSERT INTO Colors (ColorID, ColorName)
VALUES
(1, 'Black'),
(2, 'White'),
(3, 'Red'),
(4, 'Blue'),
(5, 'Green');

-- Add data into Sizes table
INSERT INTO Sizes (SizeID, SizeName)
VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large'),
(4, 'Extra Large');
