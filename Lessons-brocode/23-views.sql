-- Views
-- a virtual table based on the result-set of an SQL statement
-- The fields in a view are fields from one or more real tables in the database
-- They're not real table, but can be interacted with as if they were 
-- avoid repeat data in real table
use myDB;
select * from employees;

-- create employee attendance view 
create view employee_attendance as 
select first_name, last_name
from employees;

select * from employee_attendance order by last_name asc;

drop view employee_attendance;

-- create view customer email
select * from customers;

-- add column email
alter table customers
add column email VARCHAR(50);

-- add data
update customers
set email = "SPlankton@gmail.com"
where customer_id = 5;

create view customer_email as
select email
from customers;

select * from customer_email;


















