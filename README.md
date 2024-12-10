
# Hospital Management System

This project is a database management system for a hospital. It is designed to efficiently store and retrieve information about patients, doctors, departments, appointments, prescriptions, and more.

## Features

- **Patient Management**: Store and manage patient details including contact information and medical history.
- **Doctor Management**: Track doctors' details, specializations, and their associated departments.
- **Department Management**: Organize hospital services into departments.
- **Room Management**: Manage room availability and types (General, Private, ICU).
- **Appointment Scheduling**: Record appointment details with patients and doctors.
- **Prescription Management**: Keep track of medications prescribed to patients.
- **Admission Records**: Record and manage patient admissions and discharges.
- **Staff Management**: Store details of non-medical staff and their roles.

## Database Schema

The system includes the following tables:
- `patients`: Stores details about patients.
- `departments`: Contains information about hospital departments.
- `doctors`: Tracks details about doctors and their specializations.
- `rooms`: Manages room information and availability.
- `appointments`: Records patient appointments with doctors.
- `medications`: Lists available medications.
- `prescriptions`: Tracks medications prescribed to patients.
- `admissions`: Stores records of patient admissions.
- `staff`: Manages non-medical staff information.

## Prerequisites

To run this project, you need:
- MySQL or any compatible database management system.
- SQL tools to interact with the database (e.g., MySQL Workbench, phpMyAdmin, or CLI tools).

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/aliyara290/HospitalDatabaseManagemenet
   ```
2. Open your SQL client and run the following commands to create the database:
   ```sql
   CREATE DATABASE HospitalManagementData;
   USE HospitalManagementData;
   ```
3. Populate tables with sample data if required.

## Sample Queries

Here are some sample queries to interact with the database:

1. List all departments:
   ```sql
   SELECT * FROM departments;
   ```
2. Get patients ordered by date of birth:
   ```sql
   SELECT * FROM patients ORDER BY date_of_birth;
   ```
3. Count the total number of appointments:
   ```sql
   SELECT COUNT(*) FROM appointments;
   ```
4. Get admissions within a specific date range:
   ```sql
   SELECT * FROM admissions WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';
   ```

## Future Enhancements

- Add user authentication for secure access.
- Implement a frontend interface for better user experience.
- Integrate reports for better insights into hospital management.

## License

This project is open-source and available under the [MIT License](LICENSE).

---

### Contributors

- [Ali Yara](https://github.com/aliyara290)

Feel free to contribute to this project by submitting issues or pull requests!
