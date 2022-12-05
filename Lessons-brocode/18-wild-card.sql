-- wild card characters % _
-- used to substitute one or more characters in a string
use myDB;
select * from employees;


-- WILD CARD: % - represent a random whatever string
-- find employee that first name start with 's'
select * from employees
where first_name LIKE "s%";

-- employee that have last name end with letter r
select * from employees
where last_name LIKE "%r";

-- employees that hired in 2022
select * from employees
where hire_date LIKE "2022%";

-- employees that hired in Jan (01)
-- where hire_date LIKE "%01%";


-- WILD CARD: _ - represent one random letter
-- jobs that have one random character and end with "ook"
select * from employees
where job like "_ook";

-- employees that hired on Jan (01)
select * from employees
where hire_date LIKE "____-01-__";

-- COMBINE
-- find jobs that have second character is an 'a'
select * from employees
where job LIKE "_a%";

