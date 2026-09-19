--Drop the table if it already exists
DROP TABLE IF EXISTS users;

--Create the users table
CREATE TABLE IF NOT EXISTS users(
   user_id SERIAL PRIMARY KEY,
   username VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   age INT,
   city VARCHAR(50)
);


SELECT * FROM users;

--Insert 5 sample users into the users table
INSERT INTO users(username,email,age,city)
VALUES('Rajesh varma','rajesh@gmail.com',23,'Mumbai'),
	('Haya','haya08@gmail.com',22,'Delhi'),
	('Priya Sharma','priya@yahoo.com',25,'Bangaluru'),
	('Sneha','sneha@gmail.com',24,'Pune'),
	('Vikram','vikram@yahoo.com',26,'Hyderabad');


SELECT
	USER_ID,
	USERNAME,
	CITY
FROM
	USERS;

	
UPDATE users
SET age=27
WHERE username='Haya';

SELECT * FROM users;

SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city='Chennai'
WHERE age>=25;

UPDATE users
SET age=29, city='Kolkata'
WHERE username='Priya Sharma';


UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';


DELETE FROM users WHERE user_id=6;

--To Rename the username column to Full_Name

ALTER TABLE users
RENAME COLUMN username TO full_name;


SELECT * FROM users ORDER BY user_id ASC;

--To cahnge the age column's data type from INT to SMALLINT

ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;


--To add a NOT NULL CONSTRAINTS to city column

ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

--Adding CHECK constraint to age column

ALTER TABLE users
ADD CONSTRAINT age CHECK (age>=18);

INSERT INTO users(full_name,email,age,city)
VALUES('Rajesh varma','rajesh@gmail.com',19,'Mumbai');


--To remove CONSTRAINTS

ALTER TABLE users
DROP CONSTRAINT age;

ALTER TABLE users
RENAME TO customer;

SELECT * FROM customer ORDER BY user_id ASC;
