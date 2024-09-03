-- WINDOWS Function

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

SELECT gender, AVG(salary) OVER (partition by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name,dem.last_name,gender, AVG(salary) OVER (partition by gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name,dem.last_name,gender,salary,
SUM(salary) OVER (partition by gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number () OVER (partition by gender ORDER BY salary desc) AS ROW_NUM,
RANK() OVER (partition by gender ORDER BY salary desc) AS RANK_NUM,
DENSE_RANK() OVER (partition by gender ORDER BY salary desc) AS RANK_NUM
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;