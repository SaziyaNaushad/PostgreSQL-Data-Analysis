SELECT * FROM employee;

INSERT INTO employee(name,position,department,hire_date,salary)
			VALUES ('Ajit Sharma','Data Analyst','Data Science','2022-05-15',65000.00),
				('Priya Desai','Software Engineer','IT','2021-09-20',75000.00),
				('Raj Sharma','HR Manager','Human Resources','2019-03-10',82000.00),
				('Sneha Patel','Marketing Specialist','Marketing','2020-11-25',50000.00),
				('Vikash Varma','Sales Executive','Sales','2023-02-12',62000.00);


TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;