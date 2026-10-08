create database ecommerce_db;

use ecommerce_db;

create table product_info (
    product_id bigint,
    sku char(12),
    product_name varchar(150),
    description text,
    price decimal(10,2),
    weight FLOAT,
    rating DOUBLE,
    category ENUM('Electronics','Clothing','Home','Books'),
    features SET('New','Bestseller','Discount','Premium'),
    stock SMALLINT,
    is_active BOOLEAN,
    launch_date DATE,
    created_at DATETIME
);

INSERT INTO product_info VALUES
(
    10001,
    'SKU10000001',
    'Wireless Noise Cancelling Headphones',
    'Bluetooth headphones with ANC',
    8999.99,
    0.285,
    4.7,
    'Electronics',
    'New,Bestseller,Premium',
    150,
    TRUE,
    '2026-03-15',
    '2026-03-15 10:30:00'
);

DESC product_info;

SELECT * FROM product_info;