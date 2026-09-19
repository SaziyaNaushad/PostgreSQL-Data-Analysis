SELECT * FROM employee2;


--Find employees where the email column in NULL (if applicable).(IS NULL)

SELECT first_name,last_name,email
FROM employee2
WHERE email IS NULL;

--List employees sorted by salary in DESCENDING order.

SELECT first_name,last_name,salary
FROM employee2
ORDER BY salary DESC;

--Retrieve the top 5 highest-paid employees.(LIMIT)

SELECT first_name,last_name,salary
FROM employee2
ORDER BY salary DESC
LIMIT 5;

--Retrieve a list of unique departments.(DISTINCT)

SELECT DISTINCT department 
FROM employee2;

SELECT COUNT (DISTINCT department) AS dept_unique_count
FROM employee2;





