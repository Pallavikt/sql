CREATE DATABASE customer_system;
USE customer_system;

CREATE TABLE customer_log (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    subscription_status VARCHAR(20)
);

INSERT INTO customer_log (first_name, last_name, email_address, subscription_status) 
VALUES ('Jane', 'Doe', 'jane.doe@email.com', 'Active');

INSERT INTO customer_log (first_name, last_name, email_address, subscription_status) 
VALUES ('aaa', 'yyy', 'aaa.doe@email.com', 'paused');

UPDATE customer_log 
SET subscription_status = 'Paused'
where email_address = 'jane.doe@email.com';

DELETE FROM customer_log 
WHERE email_address = 'aaa.doe@email.com';

select * from customer_log;