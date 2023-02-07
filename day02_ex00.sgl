SELECT pizzeria.name, pizzeria.rating
FROM person_order
RIGHT JOIN menu ON
     person_order.menu_id = menu.id
     RIGHT JOIN pizzeria ON
          menu.pizzeria_id = pizzeria.id
	  WHERE person_order.id IS NULL;
