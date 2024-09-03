SELECT * 
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 + 10
FROM employee_demographics;
# PEMDAS 

SELECT gender
FROM employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;

SELECT DISTINCT first_name, gender
FROM employee_demographics;