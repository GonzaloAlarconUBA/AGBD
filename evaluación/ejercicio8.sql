SELECT car_make AS "Modelo", car_model AS "Marca", count("Modelo") AS "Cantidad"
FROM drivers_license d 
JOIN person p ON d.id = p.license_id
JOIN income i ON p.ssn = i.ssn
WHERE annual_income < 35000
GROUP BY Modelo 
HAVING Cantidad > 4
ORDER BY Cantidad DESC