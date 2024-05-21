SELECT name,address_street_name, address_number FROM person
WHERE address_street_name = "Franklin Ave"
ORDER BY address_number DESC 
LIMIT 1 OFFSET 2
