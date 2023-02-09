SELECT pizza_name, price, pz.name AS pizzeria_name, visit_date
FROM person_visits pv
JOIN pizzeria pz ON pv.pizzeria_id = pz.id
JOIN menu m ON pz.id = m.pizzeria_id
JOIN person pn ON pv.person_id = pn.id
WHERE pn.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;

-- Please write a SQL statement which returns a list of pizza names, pizza prices, pizzerias names and dates of visit for Kate and for prices in range from 800 to 1000 rubles. Please sort by pizza, price and pizzeria names. Take a look at the sample of data below.
