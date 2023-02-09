SELECT pizza_name, price, name AS pizzeria_name
FROM person_order po
RIGHT JOIN menu ON menu.id = po.menu_id
JOIN pizzeria pz ON menu.pizzeria_id = pz.id
WHERE po.id IS NULL
ORDER BY 1, 2;

-- Please use SQL statement from Exercise #01 and show pizza names from pizzeria which are not ordered by anyone, including corresponding prices also. The result should be sorted by pizza name and price.
