SELECT * FROM employee2;

--USING AND OPERATOR
SELECT * FROM employee2
WHERE age=40 AND salary>=50000;


--USING OR OPERATOR
SELECT * FROM employee2
WHERE age<=30 OR salary<=50000;


--usING NOT
SELECT * FROM employee2
WHERE NOT department='IT';