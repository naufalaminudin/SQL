SELECT *
From employee_salary
WHERE salary >= 50000
;

CREATE PROCEDURE large_salaries()
SELECT *
From employee_salary
WHERE salary >= 50000
;

CALL large_salaries();

CREATE PROCEDURE large_salaries2()
SELECT *
From employee_salary
WHERE salary >= 50000;
SELECT *
from employee_salary
WHERE salary >= 100000
;

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	From employee_salary
	WHERE salary >= 50000;
	SELECT *
	from employee_salary
	WHERE salary >= 100000;
END $$
DELIMITER ;

CALL large_salaries3()
