-- using the same database that was created in task 2

USE HospitalMSdb;

-- 1. Delete a patient record by PatientID
-- First delete appointments related to the patient, then delete the patient.

DELETE FROM Appointments
WHERE PatientID = 6;

SELECT * FROM Appointments WHERE PatientID = 6;

DELETE FROM Patients
WHERE PatientID = 6;

SELECT * FROM Patients WHERE PatientID = 6;


-- 2. Remove a doctor who is no longer working
-- First delete appointments related to this doctor, then delete the doctor.

DELETE FROM Appointments
WHERE DoctorID = 104;

SELECT * FROM Appointments WHERE DoctorID = 104;

DELETE FROM Doctors
WHERE DoctorID = 104;

SELECT * FROM Doctors WHERE DoctorID = 104;


-- 3. Delete an appointment after it is completed or canceled

DELETE FROM Appointments
WHERE AppointmentID = 1002;

SELECT * FROM Appointments WHERE AppointmentID = 1002;


-- 4. Remove patients with invalid or missing data

DELETE FROM Patients
WHERE Name IS NULL
   OR Age IS NULL
   OR Age <= 0
   OR Gender IS NULL;

SELECT * FROM Patients
WHERE Name IS NULL
   OR Age IS NULL
   OR Age <= 0
   OR Gender IS NULL;


-- 5. Delete all appointments for a specific doctor

DELETE FROM Appointments
WHERE DoctorID = 103;

SELECT * FROM Appointments WHERE DoctorID = 103;