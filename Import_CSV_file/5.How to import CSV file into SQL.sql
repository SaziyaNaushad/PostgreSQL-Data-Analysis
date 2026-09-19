DROP TABLE IF EXISTS employee2;

CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(10,2),
	jioning_date DATE,
	age INT
);

SELECT * FROM employee2;


COPY 
employee2(employee_id,first_name,last_name,department,salary,joining_date,age)
FROM 'D:\employees_large.csv'
DELIMITER','
CSV HEADER;

ALTER TABLE employee2
RENAME jioning_date TO joining_date;



