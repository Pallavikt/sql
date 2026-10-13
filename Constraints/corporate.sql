create database corporate_db;
use corporate_db;

CREATE TABLE corporate_employees (
    employee_id INT PRIMARY KEY,
    department VARCHAR(50) NOT NULL
);

CREATE TABLE expense_claims (
    -- 1. PRIMARY KEY
    claim_id INT PRIMARY KEY,
    
    -- 2. NOT NULL
    transaction_date DATE NOT NULL,
    receipt_reference_number VARCHAR(100) NOT NULL,
    reimbursement_amount DECIMAL(10, 2) NOT NULL,
    employee_id INT NOT NULL,

    -- 3. UNIQUE
    CONSTRAINT uq_receipt_per_claim 
    UNIQUE (receipt_reference_number),

    -- 4. FOREIGN KEY 
    CONSTRAINT fk_claim_employee 
    FOREIGN KEY (employee_id) REFERENCES corporate_employees(employee_id),

    -- 5. CHECK
    CONSTRAINT chk_expense_limits 
    CHECK (reimbursement_amount > 0.00 AND reimbursement_amount <= 5000.00)
);

select * from corporate_employees;
select * from expense_claims;