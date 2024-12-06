select * 
from employee_demographics
order by age DESC 
limit 2,1 ;

-- Aliasing 
-- change names of columns   "AS"

select gender , avg(age) AS avg_age
from employee_demographics
group by gender
having avg_age> 40 ; 


