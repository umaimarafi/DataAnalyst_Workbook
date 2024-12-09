-- window functions
select * 
from employee_demographics as  dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;

select dem.first_name,dem.last_name,gender , avg(salary) over(partition by gender order by dem.employee_id) as rolling_tool
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;
    
select dem.first_name,dem.last_name,gender ,salary,
row_number() over(partition by gender order by salary DESC) as rank_num,
rank()over(partition by gender order by salary DESC)as row_num,
dense_rank()over(partition by gender order by salary DESC)as dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id;

