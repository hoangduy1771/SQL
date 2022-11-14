-- Select a few rows revealing the columns
SELECT * FROM employees LIMIT 2;

-- delete column
ALTER TABLE employees
DROP COLUMN phone_number; 

-- delete a duplicate row 
DELETE FROM employees WHERE first_name='Eugene' LIMIT 1;

-- show all the constraint in a table
SHOW CREATE TABLE products_notNull; 

-- delete a row from a table 
DELETE FROM transactions WHERE transaction_id = 1;

-- update value in a cell 
UPDATE transactions
SET ammount = 500000.00
WHERE transaction_id = 1;









