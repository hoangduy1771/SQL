USE myDB;

-- insert row into a table
 INSERT INTO EMPLOYEES
 VALUES (03684561, 1, "Eugene", "Krabs", "krabs@spongebob.com", 25.50, "2022-01-02");
 
 -- insert multiple rows
 INSERT INTO employees
 VALUES (02165891, 2, "Squidward", "Tentacles", "squidward@spongebob.com", 15.00, "2022-01-03"), 
		(01254682, 3, "Spongebob", "Squarepants", "spongebob@spongebob.com", 12.50, "2022-01-04"), 
		(04895456, 4, "Patrick", "Star",  "patrick@spongebob.com", 12.50, "2022-01-05"), 
        (00132414, 5, "Sandy", "Cheeks", "sandy@spongebob.com", 17.25, "2022-01-06");
 
 -- insert but not full data
 INSERT INTO employees (employee_id, first_name, last_name)
 VALUES (6, "Sheldon", "Plankton");
 
 ALTER TABLE employees
 MODIFY COLUMN employee_id INT
 FIRST;
 








