SELECT day::date AS missing_date FROM GENERATE_SERIES(timestamp '2022-01-01', '2022-01-10', '1 day') AS day(a)
LEFT JOIN (SELECT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS v_day
ON day.a = v_day.visit_date
WHERE v_day.visit_date IS NULL
ORDER BY 1;
