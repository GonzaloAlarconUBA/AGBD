/* 1 */
INSERT INTO regions(region_name)
VALUES "Africa"

INSERT INTO regions(region_name)
VALUES "Middle east"
/* 2 */
UPDATE countries
SET region_id = 5
WHERE country_name = "Nigeria" OR country_name = "Zambia" OR country_name = "Zimbabwe"

UPDATE countries
SET region_id = 6
WHERE country_name = "Kuwait" OR country_name = "Egypt" OR country_name = "Israel"
/* 3 */
DELETE FROM regions
	WHERE region_name = "Middle East and Africa"
/* 4 */
INSERT INTO countries(country_id, country_name, region_id)
VALUES ("CD", "Chad", 5)
/* 5 */
INSERT INTO regions(region_id,region_name)
VALUES (4,"Middle East and Africa")
/* 6 */
UPDATE countries
SET region_id = 4 
WHERE region_id IN (SELECT region_id 
					FROM regions
					WHERE region_id IN (5,6))