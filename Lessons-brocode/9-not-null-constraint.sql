USE myDB;
-- a row of a column can't be null 
SELECT * FROM products;

CREATE TABLE products_notNull(
	product_id INT,
    product_name VARCHAR(25) UNIQUE,
    price DECIMAL(4, 2) NOT NULL
);

INSERT INTO products_notNull
VALUES (6, "calamary", NULL);

-- add not null constraint after table is created 
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;



