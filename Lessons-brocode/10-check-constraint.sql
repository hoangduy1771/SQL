-- CHECK constraint is used to check something (condition) in a column
USE mydb;
SELECT * FROM employees_checkconstraint;

-- create a whole new table
CREATE TABLE employees_checkconstraint (
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00)
);

-- will return an error 3819 - chk_hourly_pay is violated because hourly_pay is 9.00 
INSERT INTO employees_checkconstraint
 VALUES (2, "Squidward", "Tentacles", 9.00, "2022-01-03");
 
-- Add CHECK constraint for an already created table

ALTER TABLE employees
ADD CONSTRAINT chk_hrly_pay CHECK(hourly_pay >= 10.00);

INSERT INTO employees
 VALUES (7, "Lucky", "Cat", "lucky@spongebob.com", 9.00, "2022-01-08");

SELECT * FROM employees;

-- DELETE the check 
ALTER TABLE employees
DROP CHECK chk_hrly_pay;

-- show all constraints 
SHOW CREATE TABLE employees;


