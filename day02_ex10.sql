WITH cta_addresses AS (
	SELECT p1.address AS person_address1,
	       p1.name AS person_name1,
	       p2.address AS person_address2,
	       p2.name AS person_name2,
	       p1.id AS person_id1, p2.id AS person_id2
	FROM person p1 JOIN person p2
	ON   p1.address = p2.address)

SELECT person_name1, person_name2, person_address1 AS common_address
FROM cta_addresses
WHERE person_id1 > person_id2
ORDER BY 1, 2, 3;

-- Please find the names of persons who live on the same address. Make sure that the result is ordered by 1st person, 2nd person's name and common address. The data sample is presented below. Please make sure your column names are corresponding column names below.
