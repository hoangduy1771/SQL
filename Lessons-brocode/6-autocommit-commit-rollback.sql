USE myDB;

SELECT * FROM employees;

-- create a safe point, save manually transaction 
SET AUTOCOMMIT = OFF;

DELETE FROM employees;

ROLLBACK;

UPDATE employees
SET email='sheldon@spongebob.com'
WHERE employee_id = 6;

UPDATE employees
SET email = NULL
WHERE employee_id = 6;

COMMIT;





