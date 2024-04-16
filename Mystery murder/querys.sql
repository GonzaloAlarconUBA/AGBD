SELECT * 
 FROM crime_scene_report
 WHERE date = "20180115" AND city = "SQL City" AND type = "murder" 
/* last house on "Northwestern Dr" */ /*named Annabel, lives somewhere on "Franklin Ave".*/ 

SELECT max(address_number) 
 FROM person
 WHERE address_street_name = "Northwestern Dr";
/*4919*/

SELECT id, name, license_id FROM person
 WHERE address_number = "4919";
/*id= 14887   name= Morty Schapiro	 license= 118009*/

SELECT p.name, i.transcript FROM person p 
 JOIN interview i ON p.id = i.person_id
 WHERE p.name LIKE "morty schapiro"
 /*I heard a gunshot and then saw a man run out.
  He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z".
 Only gold members have those bags. The man got into a car with a plate that included "H42W"*/

SELECT d.plate_number, p.name FROM drivers_license d
 JOIN person p ON p.license_id = d.id
 WHERE d.plate_number LIKE "%H42W%"
/*0H42W2	Jeremy Bowers*/

SELECT p.name, i.transcript FROM person p 
 JOIN interview i ON p.id = i.person_id
 WHERE p.name LIKE "Annabel Miller"
 /*I saw the murder happen, and 
 I recognized the killer from my gym when I was working out last week on January the 9th.*/

/*FINAL*/
SELECT g.membership_id, p.name, d.plate_number 
FROM person p
JOIN get_fit_now_member gm  ON gm.person_id = p.id
JOIN get_fit_now_check_in g ON g.membership_id = gm.id
JOIN drivers_license d ON p.license_id = d.id

WHERE g.membership_id LIKE "48Z%" 
AND gm.membership_status LIKE "Gold" 
AND d.plate_number LIKE "%H42W%"
 
/* 48Z55	Jeremy Bowers	0H42W2*/