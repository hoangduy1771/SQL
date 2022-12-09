-- UNION combines the result of 2 or more select statements

create table income (
	income_name varchar(50),
    amount decimal(20, 3)
);

insert into income
values ("orders", 1000000.00),
	   ("merchandise", 50000.00),
       ("services", 125000.00);

select * from income;

create table expenses (
	expense_name varchar(50),
    amount decimal(20, 3)
);

insert into expenses
values ("wages", -250000.00),
	   ("tax", -50000.00),
       ("repairs", -15000.00);

select * from expenses;

-- print a list of different income vs expenses
select * from income
union
select * from expenses;

-- select all employees and customers that has entered the store
-- do not work if 2 tables have different number of columns
-- solution is to select some columns
select first_name, last_name from employees
union
select first_name, last_name from customers;

-- to include any duplication, use 'union all'
insert into customers
values (5, "Sheldon", "Plankton");

select first_name, last_name from employees
union all
select first_name, last_name from customers;


