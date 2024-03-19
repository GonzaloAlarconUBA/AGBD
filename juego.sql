SELECT * FROM inhabitant

SELECT * FROM inhabitant WHERE state = 'friendly'

SELECT * FROM inhabitant WHERE state = 'friendly' AND job = 'weaponsmith'

SELECT * FROM inhabitant WHERE state = 'friendly' AND job LIKE '%smith'

SELECT personid FROM inhabitant WHERE name = 'Stranger'

SELECT gold FROM inhabitant WHERE name = 'Stranger'

SELECT * FROM ITEM WHERE owner is NULL

UPDATE item SET owner = 20 WHERE item = 'coffee cup'

UPDATE item SET owner = 20 WHERE owner IS NULL

SELECT item, owner FROM ITEM WHERE owner = 20 

SELECT * FROM inhabitant WHERE (state = 'friendly') AND (job = 'merchant' OR job = 'dealer')

UPDATE item SET owner = 15 WHERE (item = 'ring' AND owner = 20) OR (item = 'teapot' AND owner = 20)

UPDATE inhabitant SET gold = gold + 120 WHERE personid = 20

UPDATE inhabitant SET name = 'Ramiro' WHERE name = 'Stranger'

SELECT * FROM inhabitant WHERE job = 'baker' ORDER BY gold DESC

UPDATE inhabitant SET gold = gold + 100 - 150 WHERE personid = 20

SELECT village.name FROM village, inhabitant WHERE village.villageid = inhabitant.villageid AND inhabitant.name = 'Dirty Dieter'
