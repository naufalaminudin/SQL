-- GROUP BY

SELECT *
FROM employee_demographics
;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY

SELECT *
FROM Employee_Demographics
ORDER BY first_name
;

SELECT *
FROM Employee_Demographics
ORDER BY first_name desc
;

SELECT *
FROM Employee_Demographics
ORDER BY gender, age 
;

SELECT *
FROM Employee_Demographics
ORDER BY gender, age DESC
;

