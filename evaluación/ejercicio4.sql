SELECT p.name AS "Nombre", max(address_number) AS "Direccion"
FROM person p 
WHERE address_street_name == "Franklin Ave"