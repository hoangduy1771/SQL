USE myDB;

SELECT * FROM employees;

UPDATE employees
SET hourly_pay = 10.25,
	hire_date = "2022-01-07",
    phone_number = 123456789
WHERE employee_id = 6;

-- Set field to null 
UPDATE employees
SET phone_number = NULL
WHERE employee_id = 6;

-- If WHERE is not specified, SET will change the entire column
UPDATE employees
SET phone_number = NULL;

-- Delete all rows in table
DELETE FROM employees;

-- Delete a row 
DELETE FROM employees
WHERE employee_id = 6;

ALTER TABLE employees
DROP COLUMN phone_number;



