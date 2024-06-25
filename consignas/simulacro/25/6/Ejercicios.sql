/* 1 */
SELECT e.first_name AS Nombre,
       da.department_name AS Departamento, 
       l.state_province AS Provincia, 
       e.salary AS Salario, 
       m.first_name AS NombreJefe 
FROM employees m
JOIN employees e ON m.manager_id = e.employee_id
JOIN departments da ON e.department_id = da.department_id
JOIN locations l ON da.location_id = l.location_id
ORDER BY Salario DESC
/* 2 */
UPDATE jobs
SET min_salary = min_salary * 0.75, max_salary = max_salary * 0.75
/* 3 */

/*  */
/*  */
/*  */
/*  */
