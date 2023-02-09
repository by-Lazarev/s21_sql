WITH
pizza_data AS (SELECT pizza_name AS object_name FROM menu ORDER BY pizza_name),
persons_data AS (SELECT name AS object_name FROM person ORDER BY name)
SELECT * FROM persons_data UNION ALL SELECT * FROM pizza_data;
