SELECT 	COALESCE(pr.name, '-')   AS person_name,
                 pv.visit_date   AS visit_date, 
	COALESCE(pz.name, '-')   AS pizzeria_name
FROM      (
          SELECT person_id, visit_date, pizzeria_id
          FROM person_visits
          WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
          ) pv
FULL JOIN pizzeria pz ON
          pv.pizzeria_id = pz.id
FULL JOIN person pr ON
          pv.person_id = pr.id
ORDER BY 1, 2, 3;
