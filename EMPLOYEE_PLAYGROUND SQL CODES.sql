SELECT * FROM parks_and_recreation.employee_demographics;



SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__%';	


-- staff with the highest salary

SELECT first_name, last_name, salary, dept_id
FROM parks_and_recreation.employee_salary
where SALARY = (select max(salary) from 
parks_and_recreation.employee_salary
)
limit 1;
-- or 

SELECT first_name, last_name, salary, dept_id
FROM parks_and_recreation.employee_salary
ORDER BY salary DESC
LIMIT 1
;

SELECT first_name, last_name, salary
FROM parks_and_recreation.employee_salary
;	