SELECT name AS name
FROM person p
JOIN person_order po ON
     p.id = po.person_id
JOIN menu m ON
     po.menu_id = m.id 
WHERE gender = 'female' AND m.pizza_name IN ('pepperoni pizza', 'cheese pizza')
GROUP BY p.name
HAVING COUNT(DISTINCT(m.pizza_name)) = 2;

-- Please find the names of all females who ordered both pepperoni and cheese pizzas (at any time and in any pizzerias). Make sure that the result is ordered by person name. The sample of data is presented below.
