-- UNIONS

SELECT first_name, last_name
from employee_demographics
UNION
SELECT first_name, last_name
from employee_salary
;

SELECT first_name, last_name
from employee_demographics
UNION DISTINCT
SELECT first_name, last_name
from employee_salary
;

SELECT first_name, last_name
from employee_demographics
UNION ALL
SELECT first_name, last_name
from employee_salary
;

SELECT first_name, last_name, 'Old Man' AS Label
from employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Old Lady' AS Label
from employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Highly Paid' AS label
from employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;