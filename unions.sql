-- unions in mysql
select first_name , last_name
from employee_demographics
union distinct
select first_name , last_name 
from employee_salary;

select first_name , last_name
from employee_demographics
union all
select first_name , last_name 
from employee_salary;

select first_name , last_name ,'old'
from employee_demographics
where age > 50 and gender = 'male'
union 
select first_name , last_name ,'old'
from employee_demographics
where age > 50 and gender = 'female'
union
select first_name , last_name ,'highlypaidemployee'
from employee_salary
where salary> 70
order by first_name,last_name;
