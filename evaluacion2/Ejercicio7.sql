SELECT DISTINCT p.name, p.ssn, c.membership_id, m.membership_status
FROM person p 
JOIN get_fit_now_member m ON p.id = m.person_id
JOIN get_fit_now_check_in c ON m.id = c.membership_id
WHERE check_in_date LIKE "2017%"
ORDER BY m.membership_status, p.ssn 