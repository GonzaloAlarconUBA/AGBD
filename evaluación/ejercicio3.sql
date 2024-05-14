SELECT p.name AS "Nombre"
FROM person p LEFT JOIN drivers_license d ON p.license_id = d.id 
WHERE d.id IS NULL