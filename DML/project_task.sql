CREATE DATABASE project_system;
USE project_system;

CREATE TABLE project_tasks (
    task_name VARCHAR(100),
    assigned_employee VARCHAR(100),
    priority_level VARCHAR(20)
);

INSERT INTO project_tasks (task_name, assigned_employee, priority_level) 
VALUES ('Design Homepage Layout', 'Alex Smith', 'Medium');

INSERT INTO project_tasks (task_name, assigned_employee, priority_level) 
VALUES ('xxx Layout', 'aaaa', 'Medium');

UPDATE project_tasks 
SET priority_level = 'High' 
WHERE task_name = 'Design Homepage Layout';

DELETE FROM project_tasks 
WHERE task_name = 'Design Homepage Layout';

select * from project_tasks;