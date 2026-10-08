CREATE DATABASE payment_db;

USE payment_db;

CREATE TABLE transaction_info (
    transaction_id BIGINT,
    user_id BIGINT,
    transaction_reference CHAR(20),
    amount DECIMAL(12,2),
    cashback FLOAT,
    transaction_type ENUM('UPI','CARD','NETBANKING','WALLET'),
    status ENUM('SUCCESS','FAILED','PENDING','REFUNDED'),
    payment_methods SET('UPI','CARD','WALLET'),
    is_verified BOOLEAN,
    transaction_date DATE,
    transaction_time TIME,
    processed_at DATETIME
);

INSERT INTO transaction_info VALUES
(
    987654321001,
    456789001,
    'TXN20261008000001',
    2499.50,
    50.25,
    'UPI',
    'SUCCESS',
    'UPI,WALLET',
    TRUE,
    '2026-10-08',
    '09:15:30',
    '2026-10-08 09:15:30'
);

DESC transaction_info;

SELECT * FROM transaction_info;