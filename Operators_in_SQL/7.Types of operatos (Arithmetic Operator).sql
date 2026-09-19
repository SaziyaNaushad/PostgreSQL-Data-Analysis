SELECT * FROM employee2;

--Retrieve the first_name,salary,and calculate a 10% bonus on the salary.
SELECT
	first_name,
	salary,
	(salary * 0.1) AS BONUS
FROM
	employee2;

--CALCULATE NEW SALARY
SELECT first_name,last_name,salary,
		(salary*12) AS annual_salary,
		(salary*0.05) AS increment_salary,
		(salary+salary*0.05) AS new_salary,
		(salary*1.05) AS new_salary2
FROM employee2;
