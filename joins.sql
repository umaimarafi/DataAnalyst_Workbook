-- joins

select * 
from employee_demographics;

select * 
from employee_salary;

-- inner joins return rows that are same in both tables rows

select * from employee_demographics AS dem
inner join employee_salary  AS sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id , age , occupation
from employee_demographics AS dem
inner join employee_salary  AS sal
	on dem.employee_id = sal.employee_id;
    
-- outer joins        left , right
select dem.employee_id , age , occupation
from employee_demographics AS dem
Left outer  join employee_salary  AS sal
	on dem.employee_id = sal.employee_id;

select dem.employee_id , age , occupation
from employee_demographics AS dem
right join employee_salary  AS sal
	on dem.employee_id = sal.employee_id;
    
    
-- self join
Select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa ,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp ,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id +1  = emp2.employee_id;
    
-- joing multiple tables
select dem.employee_id , age , occupation
from employee_demographics As dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;

select * 
from parks_departments;

