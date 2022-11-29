-- logical operators are keywords that are used to combine one or more condition

select * from employees;

alter table employees
add column job VARCHAR(50) after hourly_pay;

ALTER TABLE employees DROP COLUMN job;

update employees
set job = "mascot"
where employee_id = 7; 

-- AND
-- select a cook that hired after 5/1/2022
select * from employees
where hire_date < "2022-01-05" and job = "cook";

-- OR
-- find any cook or cashier
select * from employees
where job = "cook" or job = "cashier";

-- NOT is reversed anything mentioned
-- find everybody that NOT a manager
select * from employees
where not job = "manager";

-- combine operators
-- find everybody that NOT a manager and an assistant manager
select * from employees
where not job = "manager" and not job = "asst. manager";

-- BETWEEN is used within a column
-- similar to AND, mostly use when working to find data in a column 
select * from employees
where hire_date between "2022-01-03" and "2022-01-05";

-- IN - find values within a set (a, b, ...) 
select * from employees
where job in ("cook", "mascot");





