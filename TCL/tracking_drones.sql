CREATE DATABASE wildlife_tracking_db;
USE wildlife_tracking_db;

CREATE TABLE tracking_drones (
    drone_id INT PRIMARY KEY,
    drone_model VARCHAR(100),
    assigned_zone VARCHAR(50),
    battery_level_percentage INT
);

SET autocommit = 0;

INSERT INTO tracking_drones VALUES (901, 'Falcon-Eye V2', 'Amazon Basin', 100);
INSERT INTO tracking_drones VALUES (902, 'Night-Owl X', 'Serengeti Plains', 95);

COMMIT;

UPDATE tracking_drones SET assigned_zone = 'Arctic Circle';

ROLLBACK;

DELETE FROM tracking_drones WHERE drone_id = 901;

INSERT INTO tracking_drones VALUES (903, 'Sky-Scout 4', 'Amazon Basin', 100);

COMMIT;

select * from tracking_drones;