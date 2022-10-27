USE myDB;
 
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5 , 2 ),
    hire_date DATE
);

-- DROP TABLE EMPLOYEES; 

SELECT 
    *
FROM
    employees;
    
RENAME TABLE workers TO employees;

-- add column phone_number 
ALTER TABLE employees
ADD phone_number VARCHAR(15);

-- change name column phone_number
ALTER TABLE employees
RENAME COLUMN phone_number TO email;

-- change data type of email after transition to phone_number
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100)
-- move email to stand after last_name 
AFTER last_name;

-- add column phone_number and move it to first column 
ALTER TABLE employees
ADD COLUMN phone_number INT(14)
FIRST;

-- delete column
ALTER TABLE employees
DROP phone_number;







