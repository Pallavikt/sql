create database doctor_db;
use doctor_db;

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL
);


CREATE TABLE medical_appointments (
    -- 1. PRIMARY KEY
    appointment_id INT PRIMARY KEY,
    
    -- 2. NOT NULL
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    pay_amount DECIMAL(6, 2) NOT NULL,
    doctor_id INT NOT NULL,

    -- 3. UNIQUE 
    CONSTRAINT uq_doctor_schedule 
    UNIQUE (doctor_id, appointment_date, appointment_time),

    -- 4. FOREIGN KEY 
    CONSTRAINT fk_appointment_doctor 
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),

    -- 5. CHECK
    CONSTRAINT chk_appointment_rules 
    CHECK (pay_amount >= 0.00 AND appointment_time BETWEEN '08:00:00' AND '17:00:00')
);

select * from doctors;
select * from medical_appointments;
