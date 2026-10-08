CREATE DATABASE bookmyshow_db;

USE bookmyshow_db;

CREATE TABLE movie_info (
    movie_id BIGINT,
    title VARCHAR(150),
    description TEXT,
    language ENUM('English','Kannada','Hindi','Tamil','Telugu','Malayalam'),
    genres SET('ACTION','COMEDY','DRAMA','THRILLER','ROMANCE','HORROR'),
    duration_minutes SMALLINT,
    rating DECIMAL(3,1),
    total_views BIGINT,
    certification ENUM('U','UA','A'),
    release_date DATE,
    is_available BOOLEAN
);

INSERT INTO movie_info VALUES
(
    101001,
    'Example Movie',
    'A fictional action thriller for SQL practice.',
    'Kannada',
    'ACTION,THRILLER,DRAMA',
    145,
    8.4,
    1250000,
    'UA',
    '2026-09-25',
    TRUE
);


DESC movie_info;

SELECT * FROM movie_info;