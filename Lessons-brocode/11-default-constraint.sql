USE myDB;
SELECT * FROM products;

-- default value for a column when add 
-- replacing the good old manually add values to column 
INSERT INTO products
VALUES (7, "straw", 0.00),
	   (8, "napkin", 0.00),
       (9, "fork", 0.00),
       (10, "spoon", 0.00);

DELETE FROM products
WHERE product_id >= 7;

-- create a new table with DEFAULT constraint
CREATE TABLE products_defaultconstraint(
	product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(3, 2) DEFAULT 0
);
SELECT * FROM products_defaultconstraint;
INSERT INTO products_defaultconstraint (product_id, product_name)
VALUES (7, "straw");

-- add default constraint to already created table 
ALTER TABLE products
ALTER price SET DEFAULT 0;
INSERT INTO products (product_id, product_name)
VALUES (7, "straw");

-- example 2 
-- Create a table of transaction
-- After insert a transaction, insert a timestamp of it using DEFAULT
CREATE TABLE transactions(
	transaction_id INT UNIQUE,
    ammount DECIMAL(20, 2),
    transaction_date DATETIME DEFAULT NOW(),
    CONSTRAINT ammount CHECK (ammount >= 50000.00)
);

SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, ammount)
VALUES (1, 20000000);

INSERT INTO transactions (transaction_id, ammount)
VALUES (2, 45000000);

INSERT INTO transactions (transaction_id, ammount)
VALUES (3, 100000000);

DROP TABLE transactions;




