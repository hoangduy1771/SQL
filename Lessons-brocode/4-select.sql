USE myDB;

SELECT * FROM employees;

SELECT first_name, last_name
FROM employees
WHERE last_name='squarepants';

SELECT *
FROM employees
WHERE hourly_pay >= 15.00;

SELECT *
FROM employees
WHERE hire_date <= "2022-01-03";

SELECT *
FROM employees
WHERE employee_id != 1;

-- select employees who does not have a hire-date and start process for them 
SELECT *
FROM employees
WHERE hire_date is NULL;







