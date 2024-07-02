/*1*/
SELECT j.job_title AS tipo_trabajo,
       COUNT(e.employee_id) AS cantidad_empleados,
       SUM(e.salary) AS gasto_total_salarios
FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id
GROUP BY tipo_trabajo
ORDER BY cantidad_empleados DESC;
/*2*/
SELECT e.first_name AS Nombre, e.last_name AS Apellido, j.job_title AS Trabajo, d.department_name AS Departamento , l.city AS Ciudad FROM jobs j
JOIN employees e ON j.job_id = e.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
/*3*/
UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500
AND department_id IN (6,10);
/*4*/
DELETE FROM locations
	WHERE country_id = 'CA';
DELETE FROM departments
	WHERE location_id = 1800;
DELETE FROM employees 
	WHERE department_id = 2;
/*5*/
UPDATE employees
SET phone_number = '333.444.555'
WHERE phone_number IS NULL 
AND job_id = 15
/*6*/
INSERT INTO locations(location_id, street_address, postal_code, city, state_province, country_id)
    VALUES(2000, '2004 Charade Rd', '', 'Seatlle', 'Washington', 'US')
INSERT INTO departments(department_id,department_name,location_id)
    VALUES(12,'Consultants',2000)
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
	VALUES(20,'consultants',5000,7500);
INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
    VALUES(207,'Raul','Lopez','rlopez@gmail.com','334.445.556','2024-07-01',20,5000 ,105 ,12),
	      (208,'Andres','Gonzalez','agonzalez@gmail.com','334.445.556','2024-07-01',20,6000,106,12),
	      (209,'Laura','Fernandez','ifernandez@gmail.com','334.445.556','2024-07-01',20,7500,107,12);