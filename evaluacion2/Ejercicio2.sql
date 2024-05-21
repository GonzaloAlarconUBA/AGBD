SELECT d.car_make, d.car_model, d.plate_number, p.name 
FROM drivers_license d JOIN person p ON d.id = p.license_id
WHERE age < "40"
ORDER BY name ASC