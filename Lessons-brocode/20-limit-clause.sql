-- LIMIT clause is used to limit the number of records
-- useful when you're working with a lot of data
-- can be used to display a large data on pages (pagination)
use myDB;
select * from customers;

-- select first 2 customer
select * from customers
LIMIT 2;

-- combine limit clause with order by clause
select * from customers
order by last_name desc limit 2;

-- we can add an offset, means that to bypass some of the first rows
-- first number is the offset
select * from customers
limit 2, 1;








