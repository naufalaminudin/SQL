-- TEMPORARY TABLEs

CREATE Temporary Table Temp_Table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
From temp_table;

SELECT *
FROM Employee_Salary
;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

DROP Table salary_over_50k;

select *
from salary_over_50k;

INSERT INTO temp_table
VALUES('Naufal','Aminudin','Buya Hamka')
;

CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k
;