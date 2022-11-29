-- Functions 
USE myDB;

-- count the rows of amount column in table
select COUNT(amount) as "today's transaction"
from transactions;

-- find the maximum value of amount column in table
select MAX(amount) as "maximum"
from transactions;

-- find the minimum value of amount column in table
select MIN(amount) as "minimum"
from transactions;

-- find the average value of amount column in table
select AVG(amount) as "average"
from transactions;

-- find the sum of value of amount column in table
select SUM(amount) as "total"
from transactions;

-- find the maximum value of amount column in table
select concat(first_name, " ", last_name) as full_name
from customers;





