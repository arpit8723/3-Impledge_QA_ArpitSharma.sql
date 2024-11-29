-- Step 1: Execute Update Queries
-- Update the attending doctor for admissions where the doctor is '3' to '29'
UPDATE Admissions 
SET attending_doctor_id = 29 
WHERE attending_doctor_id = 3;

-- Update the patient ID for patients where patient ID is '35' to '4'
UPDATE Admissions 
SET patient_id = 4 
WHERE patient_id = 35;

-- Step 2: Execute the SELECT Queries

-- Query 1: Select doctors who have got Admissions
SELECT * FROM Doctors 
WHERE doctor_id IN (SELECT DISTINCT attending_doctor_id FROM Admissions);

-- Query 2: Select doctors for whom there is no Admissions
SELECT * FROM Doctors 
WHERE doctor_id NOT IN (SELECT DISTINCT attending_doctor_id FROM Admissions);

-- Query 3: Select patients whose admission can't be completed due to missing doctor details
SELECT * FROM Patients 
WHERE patient_id IN (
    SELECT patient_id FROM Admissions 
    WHERE attending_doctor_id IS NULL OR attending_doctor_id NOT IN (SELECT doctor_id FROM Doctors)
);
