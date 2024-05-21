SELECT f.event_name AS "Evento" FROM facebook_event_checkin f 
JOIN person p ON f.person_id = p.id
JOIN income i ON p.ssn = i.ssn
WHERE annual_income > 35000 
LIMIT 5