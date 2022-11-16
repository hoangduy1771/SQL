USE myDB;

--  FOREIGN KEY is a PRIMARY KEY of a table that can be found in another table
-- 	benefit: a create a link between tables, prevent any action that damage the link between them

CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO customers(first_name, last_name)
VALUES ("Fred","Fish"), 
	   ("Larry","Lobster"), 
       ("Bubble", "Bass");

-- add foreign key constraint customer_id in table transactions 
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- drop a foreign key
ALTER TABLE transactions
DROP FOREIGN KEY transactions_ibfk_1;

-- add foreign key to an existing table and give it a name
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

INSERT INTO transactions(amount, customer_id)
VALUES (4.99, 3),
	   (2.89, 2),
       (3.38, 3),
       (4.99, 1);
       
-- attempt to delete a row from customer from table customers 
DELETE FROM customers
WHERE customer_id = 3;

SELECT * FROM customers;
SELECT * from transactions;
SHOW CREATE TABLE transactions; 




