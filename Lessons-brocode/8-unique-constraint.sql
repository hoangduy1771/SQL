USE mydb;

-- Unique constaint ensure all value in a column is unique
CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(25) UNIQUE,
    price DECIMAL(4, 2)
);

SELECT * FROM products;

-- Add constraint after table is created
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_id);

-- Demo
INSERT INTO products
VALUES (1 ,"hamburger", 3.99),
	   (2, "fries", 1.89),
	   (3, "soda", 1.00),
       (4, "ice-cream", 1.49),
	   (2, "fries", 1.75)



