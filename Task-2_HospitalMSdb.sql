CREATE DATABASE HospitalMSdb;

USE HospitalMSdb;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialty VARCHAR(50)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Patients (PatientID, Name, Age, Gender)
VALUES
(1, 'Ali Al Balushi', 35, 'Male'),
(2, 'Sara Al Hinai', 28, 'Female'),
(3, 'Mohammed Al Riyami', 42, 'Male'),
(4, 'Fatma Al Saadi', 31, 'Female'),
(5, 'Khalid Al Abri', 50, 'Male'),
(6, 'Mariam Al Zadjali', 24, 'Female');

INSERT INTO Doctors (DoctorID, Name, Specialty)
VALUES
(101, 'Dr. Ahmed Al Amri', 'Cardiology'),
(102, 'Dr. Noor Al Lawati', 'Dermatology'),
(103, 'Dr. Yousuf Al Kindi', 'Orthopedics'),
(104, 'Dr. Huda Al Mukhaini', 'Pediatrics');

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, Date)
VALUES
(1001, 1, 101, '2026-06-12'),
(1002, 2, 102, '2026-06-13'),
(1003, 3, 103, '2026-06-14'),
(1004, 4, 104, '2026-06-15'),
(1005, 1, 102, '2026-06-16'),
(1006, 2, 101, '2026-06-17'),
(1007, 5, 103, '2026-06-18'),
(1008, 6, 104, '2026-06-19');


-- checking the date that have been added to tables 
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;