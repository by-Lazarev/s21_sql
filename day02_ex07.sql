SELECT pz.name
FROM person_visits pv
JOIN person pi ON pv.person_id = pi.id
JOIN pizzeria pz ON pv.pizzeria_id = pz.id
RIGHT JOIN menu ON pz.id = menu.pizzeria_id
WHERE visit_date = '2022-01-08'  AND pi.name = 'Dmitriy' AND menu.price  < 800;
-- Please find the name of pizzeria Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.
