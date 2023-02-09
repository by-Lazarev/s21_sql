SELECT menu.id AS menu_id
FROM person_order po
RIGHT JOIN menu ON menu.id = po.menu_id
WHERE po.id IS NULL
ORDER BY 1;

-- Please find all menu identifiers which are not ordered by anyone. The result should be sorted by identifiers.
