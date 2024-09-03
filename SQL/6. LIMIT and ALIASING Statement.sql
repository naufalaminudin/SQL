-- LIMIT & Aliansing

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

-- ALIASING

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;