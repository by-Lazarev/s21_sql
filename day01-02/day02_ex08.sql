SELECT p.name
FROM person_order po 
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
WHERE 
     p.address IN ('Moscow', 'Samara') AND
     p.gender = 'male' AND
     m.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY p.name DESC;

-- Please find the names of all males from Moscow or Samara cities who orders either pepperoni or mushroom pizzas (or both) . Please order the result by person name in descending mode.
