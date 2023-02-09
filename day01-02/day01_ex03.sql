SELECT order_date as action_date,  person_id from person_order
UNION
SELECT visit_date as action_date, person_id from person_visits
ORDER BY 1, 2 DESC;
