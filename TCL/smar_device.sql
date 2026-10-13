CREATE DATABASE smarthome_db;
USE smarthome_db;

CREATE TABLE smart_devices (
    device_id INT PRIMARY KEY,
    device_name VARCHAR(100),
    room VARCHAR(50),
    status VARCHAR(50)
);

SET autocommit = 0;

INSERT INTO smart_devices VALUES (501, 'Nest Thermostat', 'Living Room', 'Online');
INSERT INTO smart_devices VALUES (502, 'Ring Camera', 'Front Door', 'Online');

COMMIT;

UPDATE smart_devices SET status = 'Corrupted';

ROLLBACK;

DELETE FROM smart_devices WHERE device_id = 501;

INSERT INTO smart_devices VALUES (503, 'Smart Fridge', 'Kitchen', 'Online');

COMMIT;

select * from smart_devices;