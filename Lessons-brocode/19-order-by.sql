-- ORDER BY clause sort the result of the query
use myDB;
select * from employees;

-- sort last_name ascending order
select * from employees
order by last_name;

-- sort last_name descending order
select * from employees
order by last_name desc;

-- if column have rows that share the same amount, add another column name to sort them 
select * from transactions
order by amount, customer_id;

-- if column have rows that share the same amount, add another column name to sort them 
select * from transactions
order by amount asc, customer_id desc;