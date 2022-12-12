-- SELF JOIN
-- join another copy of a table to itself
-- used to compare rows of the same table
-- helps to display a heirarchy of data

use myDB;
select * from customers;

-- Example 1
-- Add a column with referral_id, when a customer has referral_id, they get a free meal
-- add referral_id column
alter table customers
add referral_id int;

-- add referrals
update customers
set referral_id = 1
where customer_id = 2;

update customers
set referral_id = 2
where customer_id = 4;

-- inner join table customers link by referral_id and customer_id
select a.customer_id, a.first_name, a.last_name,
	   CONCAT (b.first_name, " " , b.last_name) as "referred_by"
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;

-- Example 2
-- add column supervisor_id to inner join and take look at which supervisor manage who
select * from employees;
alter table employees
add supervisor_id int;

-- add supervisor for employees
update employees
set supervisor_id = 1
where employee_id = 5;

select  a.employee_id, a.first_name, a.last_name,
		concat(b.first_name, " ", b.last_name) as "reports to"
from employees as a
inner join employees as b
on a.supervisor_id = b.employee_id;









