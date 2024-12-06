-- having vs where
SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender
HAVING avg(age)>40;

SELECT occupation, AVG(salary) 
FROM employee_salary
group by occupation like '%manager%'
having avg(salary)>75000; 