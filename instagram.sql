create database instagram_db;

use instagram_db;

create table user_profile (
    user_id bigint,
    username varchar(50),
    full_name varchar(100),
    email varchar(150),
    bio text,
    age tinytext,
    account_status enum('ACTIVE','SUSPENDED','DEACTIVATED'),
    account_features SET('VERIFIED','CREATOR','BUSINESS','PRIVATE'),
    followers_count INT,
    following_count INT,
    is_verified BOOLEAN,
    date_of_birth DATE,
    last_login TIME,
    created_at DATETIME
);

INSERT INTO user_profile VALUES
(
    100002,
    'pallavi_dev',
    'Pallavi K T',
    'pallavi@example.com',
    'CSE | AI/ML | Technology',
    22,
    'ACTIVE',
    'CREATOR',
    5200,
    620,
    FALSE,
    '2004-08-20',
    '08:45:20',
    '2025-08-15 14:20:00'
);

DESC user_profile;

SELECT * FROM user_profile;