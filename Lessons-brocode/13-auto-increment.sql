USE mydb;
-- auto increment can be added to a column that is a KEY
-- by default, auto_increment is set to 1
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(6, 2)
); 

SELECT * FROM transactions;

INSERT INTO transactions (amount)
VALUES(2000), (500), (200), (255.55), (68.68);

-- Add auto increment to an already created table
-- The column have to have PRIMARY KEY constraint
ALTER TABLE transactions MODIFY transaction_id INTEGER NOT NULL AUTO_INCREMENT;

-- start increment at a number 
ALTER TABLE transactions
AUTO_INCREMENT = 1000;




