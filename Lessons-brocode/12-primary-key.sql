-- When applying PRIMARY KEY constraint to a column, it must be unique and not null
-- Typically use for identifier - id
-- a table can only have 1 PRIMARY KEY constraint
USE myDB;

CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY,
    ammount DECIMAL(20, 2)
);

SELECT * FROM transactions;

INSERT INTO transactions VALUES (1, 2000.00);
INSERT INTO transactions VALUES (2, 2000.00);
INSERT INTO transactions VALUES (3, 500000.00),
								(4, 1000000.00),
                                (5, 30000.00);
                                
-- Add PRIMARY KEY constraint to an already existed table
ALTER TABLE transactions
ADD CONSTRAINT PRIMARY KEY(transaction_id);

-- Exercise: find a customer that overpays at transaction number 3 and refund them
SELECT ammount FROM transactions WHERE transaction_id = 3;

UPDATE transactions
SET ammount = 500000.00
WHERE transaction_id = 3;





