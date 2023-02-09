WITH all_data AS (
SELECT id AS object_id,
       pizza_name AS object_name
FROM menu
UNION
SELECT id AS object_id,
       name AS object_name
FROM person)
SELECT * FROM all_data ORDER BY 1, 2;
