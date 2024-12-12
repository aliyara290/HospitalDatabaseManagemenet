
CREATE DATABASE HospitalManagementData;
USE HospitalManagementData;
show databases;
CREATE TABLE patients (
    patient_id INT(11) AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    phone_number VARCHAR(15)  NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(255) ,
    PRIMARY KEY (patient_id)
);

CREATE TABLE departments (
    department_id INT(11) AUTO_INCREMENT,
    department_name VARCHAR(50)  NOT NULL,
    location VARCHAR(100)  NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE doctors (
    doctor_id INT(11) AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL ,
    last_name VARCHAR(50) NOT NULL ,
    specialization VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department_id INT(11),
    PRIMARY KEY (doctor_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE rooms (
    room_id INT(11) AUTO_INCREMENT,
    room_number VARCHAR(10)  NOT NULL,
    room_type ENUM('General', 'Private', 'ICU') NOT NULL,
    availability TINYINT(1),
    PRIMARY KEY (room_id)
);

CREATE TABLE appointments (
    appointment_id INT(11) AUTO_INCREMENT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    doctor_id INT(11),
    patient_id INT(11),
    reason VARCHAR(255) NOT NULL,
    PRIMARY KEY (appointment_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE medications (
    medication_id INT(11) AUTO_INCREMENT,
    medication_name VARCHAR(100)  NOT NULL,
    dosage VARCHAR(50) NOT NULL,
    PRIMARY KEY (medication_id)
);

CREATE TABLE prescriptions (
    prescription_id INT(11) AUTO_INCREMENT,
    patient_id INT(11),
    doctor_id INT(11),
    medication_id INT(11),
    prescription_date DATE NOT NULL,
    dosage_instructions VARCHAR(255) NOT NULL,
    PRIMARY KEY (prescription_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY (medication_id) REFERENCES medications(medication_id)
);

CREATE TABLE admissions (
    admission_id INT(11) AUTO_INCREMENT,
    patient_id INT(11),
    room_id INT(11),
    admission_date DATE NOT NULL,
    discharge_date DATE,
    PRIMARY KEY (admission_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE staff (
    staff_id INT(11) AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department_id INT(11),
    PRIMARY KEY (staff_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);


show tables;
-- question 2
SELECT * from departments;
 
 -- question 3
SELECT * from patients
ORDER BY date_of_birth;

-- question 4

SELECT DISTINCT gender from patients;

-- question 5 
SELECT * from doctors LIMIT 3;

-- question 6
SELECT * 
FROM patients
WHERE date_of_birth < '2000-01-01';

-- question 7 
SELECT *
FROM doctors
WHERE specialization = ANY (SELECT specialization FROM doctors WHERE specialization = 'Neurologist' OR specialization = 'Cardiologist');

select * from admissions;
-- question 8 
SELECT * 
FROM admissions
WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07' ORDER BY admission_date;
-- question 9 
ALTER TABLE patients ADD age_category ENUM('Child', 'Adult', 'Senior');
SELECT * from patients;
-- question 10 
SELECT COUNT(*)
FROM appointments;
-- question 11
SELECT department_id, COUNT(*) AS total_of_doctors
FROM doctors
GROUP BY(department_id);
-- question 12
SELECT AVG(timestampdiff(year,date_of_birth,now())) AS Average 
FROM patients;
-- question 13
SELECT MAX(CONCAT(appointment_date, ' ', appointment_time)) AS appointement_calendrie
FROM appointments;
SELECT * FROM appointments;
-- question 14
SELECT room_id, COUNT(*) AS total_admissions 
FROM admissions 
GROUP BY room_id;
-- question 15
SELECT * 
FROM patients 
WHERE email IS NULL OR email = '';

-- question 17
DELETE FROM appointments 
WHERE appointment_date < '2024-01-01';

-- question 18
UPDATE departments 
SET 
    department_name = 'Cancer Treatment' 
WHERE 
    department_name = 'Oncology';
    SELECT * FROM departments;

-- question 19
SELECT gender, COUNT(*) AS total_patients 
FROM patients 
GROUP BY gender 
HAVING total_patients >= 2;

-- question 20
SET SQL_SAFE_UPDATES = 0;