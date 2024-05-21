SELECT min(age) AS "Edad_Minima", max(age) AS "Edad_Maxima", avg(age) AS "Edad_Promedio"
FROM drivers_license 
WHERE gender == "male"
