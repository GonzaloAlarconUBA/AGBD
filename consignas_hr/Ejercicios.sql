/*Ejercicio 1*/
SELECT first_name,last_name,salary FROM employees WHERE salary < "6000"
/*Ejercicio 2*/
SELECT e.first_name,e.last_name,d.department_name,l.city,l.state_province FROM employees e 
JOIN departments d ON  e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
/*Ejercicio 3*/
SELECT e.first_name "Nombre",m.first_name "Nombre Jefe" FROM employees e
JOIN employees m ON e.employee_id = m.manager_id
ORDER BY "Nombre Jefe"
/*Ejercicio 4*/
SELECT e.first_name "Nombre Empleado",e.last_name "Apellido Empleado",h.first_name "Nombre Hijo"FROM employees e 
JOIN dependents h ON e.employee_id = h.employee_id
ORDER BY "Nombre Hijo" ASC
/*Ejercicio 5*/
SELECT e.first_name "Nombre Trabajador", t.job_title "Trabajo" , t.max_salary "Salario Maximo" FROM employees e 
JOIN jobs t ON e.job_id = t.job_id
ORDER BY "Salario Maximo" DESC
/*Ejercicio 6*/
SELECT e.first_name as Nombre, e.last_name as  Apellido, d.department_name as Departamento, e.salary as Salario FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs t ON e.job_id = t.job_id
ORDER BY Nombre, Departamento
/*Ejercicio 7*/
SELECT e.first_name as Nombre, l.state_province as Estado FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
ORDER BY Nombre 
/*Ejercicio 8*/
