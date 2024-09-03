SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000

-- WHY Use HAVING instead of WHERE ?
-- because when we were selecting gender and performing aggregate function, this occurs after performing group by and grouping occupation together
-- so we have to use having clause after group by
;