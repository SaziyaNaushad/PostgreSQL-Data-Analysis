SELECT * FROM employee2;

--greater than 30
SELECT * FROM employee2
WHERE age>30;


--matches all except 30(<>)
SELECT * FROM employee2
WHERE age!=31;


--salary greater than 50000
SELECT first_name,salary FROM employee2
WHERE salary>50000;


