
SELECT * 
FROM employee_salary;
SELECT * 
FROM employee_salary
WHERE first_name ='Leslie';    #comparision operator

SELECT * 
FROM employee_salary
WHERE salary > 50000;

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM employee_salary
WHERE salary <= 50000;

Select * from employee_demographics
where gender = 'Female';

Select * from employee_demographics
where gender != 'Female';

Select * from employee_demographics
where  birth_date > '1985-01-01';

-- and or not logical operators
Select * from employee_demographics
where  birth_date > '1985-01-01' and gender = 'male';

Select * from employee_demographics
where  birth_date > '1985-01-01' or gender = 'male';

Select * from employee_demographics
where  birth_date > '1985-01-01' or gender != 'male';

Select * from employee_demographics where (first_name = 'Leslie' and age = 44 ) or age >55 ;

-- like statements   % ampersand and _ actual balue
Select * from employee_demographics where first_name = 'Jer';
Select * from employee_demographics where first_name  Like  '%Jer%';   -- anything come before and after 

Select * from employee_demographics where first_name  Like  'a___%'; -- a and 3 character after it and a % that anything can come next

Select * from employee_demographics where birth_date  Like  '198%';