/*Ejercicio 1*/
SELECT department_name FROM departments
ORDER BY department_name ASC
/*Ejercicio 2*/
SELECT DISTINCT salary FROM employees
ORDER BY salary DESC
/*Ejercicio 3*/
SELECT e.first_name as "Nombre empleado", j.job_title as "Trabajo", j.max_salary as "Salario maximo", j.min_salary as "Salario minimo"
FROM employees e JOIN jobs j ON e.job_id = j.job_id 
WHERE Trabajo LIKE "%Manager%"
ORDER BY "Salario maximo" DESC
/*Ejercicio 4*/
SELECT c.country_name as "Pais", r.region_name as "Region"
FROM countries c JOIN regions r ON c.region_id = r.region_id
ORDER BY "Region"
/*Ejercicio 5*/
SELECT e.first_name as "Nombre", e.last_name as "Apellido", d.department_name as "Departamento", e.salary as "Salario"
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE "Salario" > 9000 AND "Salario" < 17000
ORDER BY "Salario" DESC
/*Ejercicio 6*/
SELECT c.country_name as "Pais", r.region_name as "Region"
FROM countries c JOIN regions r ON c.region_id = r.region_id
WHERE "Region" > 5
ORDER BY "Region"
/*Ejercicio 7*/
SELECT max(hire_date) as "Menos viejo", min(hire_date) AS "Mas nuevo"
FROM employees 
/*Ejercicio 8*/
SELECT e.first_name AS "Nombre", e.last_name AS "Apellido", count(d.dependent_id) AS "cantHijos"
FROM employees e JOIN dependents d ON e.employee_id = d.employee_id
GROUP BY e.employee_id
ORDER BY cantHijos DESC
LIMIT 5
/*Ejercicio 9*/
SELECT e.first_name as "Nombre", e.last_name as "Apellido", e.salary as "Salario" 
FROM employees e JOIN departments d ON e.department_id = d.department_id
LIMIT 1
OFFSET 2
/*Ejercicio 10*/
SELECT AVG(HIJOS), MAX(HIJOS)
FROM
    (SELECT e.first_name as "Nombre", e.last_name as "Apellido", count(d.dependent_id) as hijos
    FROM employees e JOIN dependents d ON e.employee_id = d.employee_id
    GROUP BY e.employee_id
    ORDER BY e.last_name)