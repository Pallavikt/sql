CREATE DATABASE greenhouse_farming_db;
USE greenhouse_farming_db;

CREATE TABLE greenhouse_zones (
    zone_id INT PRIMARY KEY,
    crop_type VARCHAR(100),
    temperature_celsius INT,
    irrigation_status VARCHAR(50)
);

SET autocommit = 0;

INSERT INTO greenhouse_zones VALUES (10, 'Hydroponic Strawberries', 22, 'Optimal');
INSERT INTO greenhouse_zones VALUES (20, 'Medicinal Saffron', 18, 'Optimal');

COMMIT;

UPDATE greenhouse_zones SET temperature_celsius = 60, irrigation_status = 'FAILSAFE ACTIVE';

ROLLBACK;

DELETE FROM greenhouse_zones WHERE zone_id = 10;

INSERT INTO greenhouse_zones VALUES (10, 'Heirloom Tomatoes', 24, 'Optimal');

COMMIT;
 
 select * from greenhouse_zones;