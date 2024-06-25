/*1*/
SELECT d.department_name AS Departamento, count(e.employee_id) AS CantEmpleados, sum(e.salary) AS Salario FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id
/*2*/
SELECT e.first_name AS Nombre,
	   e.last_name AS Apellido,
	   d.department_name AS Departamento,
	   c.country_name AS Pais
	   FROM employees e 
	   JOIN departments d ON e.department_id = d.department_id
	   JOIN locations l ON d.location_id = l.location_id
	   JOIN countries c ON l.country_id = c.country_id
	   WHERE country_name = "United States of America"
/*3*/
SELECT employee_id, first_name, last_name, email, phone_number, department_id 
FROM employees
WHERE phone_number IS NULL

UPDATE employees
SET phone_number = 111.222.3344
WHERE phone_number IS NULL
/*4*/
UPDATE employees
SET salary = salary * 1.20
WHERE salary <= 8000 OR job_id = 13 OR job_id = 9
/*5*/

/*6*/
/*7*/
