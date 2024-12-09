CREATE DATABASE HospitalManagement;
USE HospitalManagement;

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female'),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255),
    PRIMARY KEY (patient_id)
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT,
    department_name VARCHAR(50),
    location VARCHAR(100),
    PRIMARY KEY (department_id)
);

CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT,
    PRIMARY KEY (doctor_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT,
    room_number VARCHAR(10),
    room_type ENUM('General', 'Private', 'ICU'),
    availability TINYINT(1),
    PRIMARY KEY (room_id)
);

CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT,
    appointment_date DATE,
    appointment_time TIME,
    doctor_id INT,
    patient_id INT,
    reason VARCHAR(255),
    PRIMARY KEY (appointment_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE medications (
    medication_id INT AUTO_INCREMENT,
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    PRIMARY KEY (medication_id)
);

CREATE TABLE prescriptions (
    prescription_id INT AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    medication_id INT,
    prescription_date DATE,
    dosage_instructions VARCHAR(255),
    PRIMARY KEY (prescription_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY (medication_id) REFERENCES medications(medication_id)
);

CREATE TABLE admissions (
    admission_id INT AUTO_INCREMENT,
    patient_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,
    PRIMARY KEY (admission_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
