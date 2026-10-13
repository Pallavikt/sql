CREATE DATABASE hospital_management;
USE hospital_management;

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL
);

CREATE TABLE medical_appointments (
    appointment_id INT PRIMARY KEY,                 
    appointment_date DATE NOT NULL,                  
    appointment_time TIME NOT NULL,                  
    copay_amount DECIMAL(6, 2) NOT NULL,            
    doctor_id INT NOT NULL,                          

    CONSTRAINT uq_doctor_schedule 
    UNIQUE (doctor_id, appointment_date, appointment_time), 

    CONSTRAINT fk_appointment_doctor 
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id), 

    CONSTRAINT chk_appointment_rules 
    CHECK (copay_amount >= 0.00 AND appointment_time BETWEEN '08:00:00' AND '17:00:00') 
);

INSERT INTO doctors (doctor_id, doctor_name) 
VALUES (101, 'Dr. Sarah Park');

INSERT INTO medical_appointments (appointment_id, appointment_date, appointment_time, copay_amount, doctor_id) 
VALUES (5001, '2026-10-15', '09:30:00', 50.00, 101);

UPDATE medical_appointments 
SET copay_amount = 25.00 
WHERE appointment_id = 5001;

DELETE FROM medical_appointments 
WHERE appointment_id = 5001;

select * from doctors;
select * from medical_appointments;