USE HospitalManagementData;

INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES 
('John', 'Doe', 'Male', '1985-03-25', '0641234567', 'johndoe@example.com', '123 Main St, Casablanca, Morocco'),
('Jane', 'Smith', 'Female', '1990-07-15', '0659876543', 'janesmith@example.com', '456 Elm St, Rabat, Morocco'),
('Ahmed', 'Ali', 'Male', '1982-01-18', '0678923456', 'ahmedali@example.com', '789 Pine Rd, Fez, Morocco'),
('Sara', 'Wilson', 'Female', '1978-09-30', '0653456789', 'sarawilson@example.com', '321 Oak St, Tangier, Morocco'),
('Emily', 'Brown', 'Female', '1995-04-22', '0631230987', 'emilybrown@example.com', '654 Cedar St, Marrakesh, Morocco'),
('Khalid', 'Mansour', 'Male', '2003-05-12', '0689876543', 'khalidmansour@example.com', '987 Birch Rd, Rabat, Morocco'),
('Ali', 'Yara', 'Other', '2010-07-15', '0661230987', 'aliyara@example.com', '111 Maple St, Agadir, Morocco'),
('Erick', 'Tahcha', 'Male', '2005-11-05', '0619876543', 'ericktahcha@example.com', '333 Palm Ave, Oujda, Morocco');

INSERT INTO departments (department_name, location)
VALUES 
('Cardiology', 'First Floor, Block A'),
('Neurology', 'Second Floor, Block B'),
('Orthopedics', 'Ground Floor, Block C'),
('Pediatrics', 'Third Floor, Block D'),
('Radiology', 'Second Floor, Block E'),
('Surgery', 'First Floor, Block F'),
('Oncology', 'Third Floor, Block G'),
('Emergency', 'Ground Floor, Block H');

INSERT INTO doctors (first_name, last_name, specialization, phone_number, email, department_id)
VALUES 
('Emily', 'Taylor', 'Cardiologist', '0662345678', 'emilytaylor@example.com', 1),
('Michael', 'Brown', 'Neurologist', '0683456789', 'michaelbrown@example.com', 2),
('Sara', 'Wilson', 'Orthopedic Surgeon', '0694787890', 'sarawilson@example.com', 3),
('Ali', 'Khan', 'Pediatrician', '0694509890', 'alikhan@example.com', 4),
('Ahmed', 'Tahcha', 'Surgeon', '0624567890', 'ahmedtahcha@example.com', 6),
('John', 'Smith', 'Oncologist', '0623456790', 'johnsmith@example.com', 7),
('Linda', 'Scott', 'Radiologist', '0678901234', 'lindascott@example.com', 5),
('James', 'White', 'Emergency Specialist', '0634567890', 'jameswhite@example.com', 8);

INSERT INTO rooms (room_number, room_type, availability)
VALUES 
('101', 'General', 1),
('102', 'Private', 0),
('103', 'ICU', 1),
('201', 'General', 1),
('202', 'Private', 0),
('203', 'ICU', 1),
('301', 'General', 1),
('302', 'Private', 1);

INSERT INTO appointments (appointment_date, appointment_time, doctor_id, patient_id, reason)
VALUES 
('2024-12-10', '10:30:00', 1, 1, 'Routine check-up'),
('2024-12-11', '14:00:00', 2, 2, 'Migraine consultation'),
('2024-12-12', '09:15:00', 3, 3, 'Knee pain assessment'),
('2024-12-13', '11:45:00', 4, 4, 'Child growth check'),
('2024-12-14', '13:30:00', 5, 5, 'Surgery follow-up'),
('2024-12-15', '16:00:00', 6, 6, 'Cancer treatment plan'),
('2024-12-16', '08:30:00', 7, 7, 'MRI scan'),
('2024-12-17', '10:00:00', 8, 8, 'Emergency evaluation');

INSERT INTO medications (medication_name, dosage)
VALUES 
('Aspirin', '100 mg'),
('Paracetamol', '500 mg'),
('Ibuprofen', '200 mg'),
('Metformin', '500 mg'),
('Omeprazole', '20 mg'),
('Atorvastatin', '10 mg'),
('Albuterol', '2.5 mg'),
('Losartan', '50 mg');

-- Insert records into prescriptions
INSERT INTO prescriptions (patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES 
(1, 1, 1, '2024-12-09', 'Take one tablet daily after meals'),
(2, 2, 2, '2024-12-10', 'Take two tablets every 8 hours'),
(3, 3, 3, '2024-12-11', 'Take one tablet every 6 hours'),
(4, 4, 4, '2024-12-12', 'Take one tablet before breakfast'),
(5, 5, 5, '2024-12-13', 'Take one capsule daily at bedtime'),
(6, 6, 6, '2024-12-14', 'Take one tablet daily in the morning'),
(7, 7, 7, '2024-12-15', 'Use one dose as needed for asthma symptoms'),
(8, 8, 8, '2024-12-16', 'Take one tablet daily in the evening');

INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES 
(1, 1, '2024-12-08', '2024-12-12'),
(2, 2, '2024-12-07', '2024-12-11'),
(3, 3, '2024-12-06', '2024-12-11'),
(4, 4, '2024-12-05', '2024-12-09'),
(5, 5, '2024-12-04', '2024-12-08'),
(6, 6, '2024-12-03', '2024-12-07'),
(7, 7, '2024-12-02', '2024-12-06'),
(8, 8, '2024-12-01', '2024-12-05');


INSERT INTO staff (first_name, last_name, job_title, phone_number, email, department_id)
VALUES 
('Alice', 'Johnson', 'Nurse', '0623456789', 'alicejohnson@example.com', 1),
('Bob', 'Anderson', 'Lab Technician', '0644567890', 'bobanderson@example.com', 2),
('Charlie', 'Lee', 'Receptionist', '0665678901', 'charlielee@example.com', 3),
('David', 'Clark', 'Pharmacist', '0651234567', 'davidclark@example.com', 4),
('Eve', 'Miller', 'Administrator', '0678901234', 'evemiller@example.com', 5),
('Frank', 'Hall', 'Janitor', '0683456789', 'frankhall@example.com', 6),
('Grace', 'Green', 'Technician', '0634567890', 'gracegreen@example.com', 7),
('Hank', 'Young', 'Security', '0667890123', 'hankyoung@example.com', 8);

