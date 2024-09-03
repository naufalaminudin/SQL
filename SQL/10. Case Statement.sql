SELECT first_name, last_name, Age, 
CASE  
	WHEN age <= 30 THEN 'Young'     
    WHEN age BETWEEN 31 and 50 THEN 'Adult'     
    WHEN age >= 50 THEN 'Old' 
    END AS age_bracket 
FROM employee_demographics
;

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END as Bonus
From employee_salary
;