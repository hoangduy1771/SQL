-- JOINS is a clause that uses to combine row from 2 or more tables based on the relation between them
-- relation such as FOREIGN KEY
USE myDB;

-- Not all customer has a customer_id
-- There could be a customer that went in and paid with cash
INSERT INTO transactions (amount, customer_id)
VALUES (1.00, NULL);
SELECT * FROM transactions;

-- There are customers that never initiate a transaction
-- They just registered and leave the account there/ haven't bought anything yet
INSERT INTO customers(first_name, last_name)
VALUES ("Poppy", "Puff");
SELECT * FROM customers;

-- INNER JOIN 2 tables solely based on what they have in common
SELECT * FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- show specific column 
SELECT transaction_id, amount, first_name, last_name FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id;

-- LEFT JOIN: display everything in the table from the left
-- if there is any relevant data - pull in data in the table on the right
SELECT * FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

-- RIGHT JOIN: opposite of the LEFT JOIN
SELECT * FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;









