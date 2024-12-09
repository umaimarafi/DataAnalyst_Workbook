-- sub queries

select * 
from employee_demographics
where employee_id in 
             (select employee_id  
              from employee_salary
              where dept_id = 1 )
;

SELECT first_name,salary ,
(select  avg(salary) 
FROM employee_salary)
FROM employee_salary
group by first_name,salary
;

select gender,avg(age),max(age),min(age),count(age) 
from employee_demographics
group by gender;

select  avg(`max(age)`)
from 
(select gender,avg(age) as avg_age,max(age)as maz_age,min(age) as min_age,count(age) 
from employee_demographics
group by gender) as agg_table
 
;
