SELECT 
	first_name,
    last_name,
    salary
FROM employees
WHERE salary > (SELECT AVG(salary)
				FROM employees)
ORDER BY 
	first_name,
    last_name,
    salary