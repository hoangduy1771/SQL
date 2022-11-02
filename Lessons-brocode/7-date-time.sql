USE myDB;

CREATE TABLE test(
	my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

SELECT * FROM test;

INSERT INTO test
VALUES (current_date(), current_time(), now());

-- current_date() + 1 means tomorrow, oppsite for current_date() - 1
INSERT INTO test
VALUES (current_date() + 1, current_time(), now());




