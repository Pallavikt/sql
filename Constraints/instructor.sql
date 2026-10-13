create database instructor_db;
use instructor_db;

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100) NOT NULL
);

CREATE TABLE course_sections (
    -- 1. PRIMARY KEY Constraint
    section_id INT PRIMARY KEY,
    
    -- 2. NOT NULL Constraint
    course_code VARCHAR(10) NOT NULL,
    classroom_number VARCHAR(20) NOT NULL,
    semester_term VARCHAR(20) NOT NULL,
    max_student_capacity INT NOT NULL,
    instructor_id INT NOT NULL,

    -- 3. UNIQUE Constraint
    CONSTRAINT uq_classroom_schedule 
    UNIQUE (classroom_number, semester_term),

    -- 4. FOREIGN KEY Constraint 
    CONSTRAINT fk_section_instructor 
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id),

    -- 5. CHECK Constraint 
    CONSTRAINT chk_class_size 
    CHECK (max_student_capacity > 0 AND max_student_capacity <= 150)
);

select * from instructors;
select * from course_sections;