
DROP TABLE IF EXISTS  Employees3;

--Create Employees Table

CREATE TABLE Employees3(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT
);


--Insert Data into Employees3

INSERT INTO Employees3(first_name,last_name,department_id)
VALUES
('Rahul','Sharma',101),
('Priya','Mehta',102),
('Ankit','Verma',103),
('Simran','Kaur',NULL),
('Aman','Singh',101);


DROP TABLE IF EXISTS Departments;

--Create Department Table

CREATE TABLE Departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

--Insert Data into Departments

INSERT INTO Departments(department_id,department_name)
VALUES
(101,'Sales'),
(102,'Marketing'),
(103,'IT'),
(104,'HR');


SELECT * FROM Employees3;
SELECT * FROM Departments;


--Use of INNER JOIN

SELECT e.employee_id,e.first_name,e.last_name,
		d.department_id,d.department_name
FROM Employees3 e
INNER JOIN
Departments d
ON e.department_id=d.department_id;

--Use of LEFT JOIN

SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM Employees3 e
LEFT JOIN
Departments d
ON e.department_id=d.department_id;


--Use of RIGHT JOIN

SELECT e.employee_id,e.first_name,e.last_name,
	   d.department_id,d.department_name
FROM Employees3 e
RIGHT JOIN
Departments d
ON e.department_id=d.department_id;

--Use of FULL OUTER JOIN

SELECT e.employee_id,e.first_name,e.last_name,
		d.department_id,d.department_name
FROM Employees3 e
FULL OUTER JOIN
Departments d
ON e.department_id=d.department_id;


--USe of CROSS JOIN

SELECT e.first_name,e.last_name,d.department_name
FROM Employees3 e
CROSS JOIN
Departments d;

--SELF JOIN

SELECT e1.first_name AS Employee_name1,
		e2.first_name AS Employees_name2,
		d.department_name
FROM Employees3 e1 JOIN Employees3 e2
ON e1.department_id=e2.department_id AND e1.employee_id!=e2.employee_id
JOIN 
Departments d
ON e1.department_id=d.department_id;



