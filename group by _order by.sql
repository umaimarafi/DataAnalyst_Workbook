-- group by 
SELECT * FROM employee_demographics;

SELECT gender
 FROM employee_demographics
 group by gender;
 
 SELECT first_name
 FROM employee_demographics
 group by gender;
 
 SELECT gender, avg(age)
 FROM employee_demographics
 group by gender;
 
 
 SELECT occupation
 FROM employee_salary
 group by occupation,salary;
 
 Select gender , avg(age), max(age),min(age) from employee_demographics
 group by gender ;
 Select * from employee_demographics
  order by gender, age DESC;
  
-- by default its aesc order
   Select gender , avg(age), max(age),min(age) from employee_demographics
 ORDER by gender DESC;
 
  SELECT * FROM  employee_demographics
  ORDER BY age, gender ;
  -- by column position not recommended
  
   Select * from employee_demographics
 order  by 5,4 ;
 
 Select * from employee_demographics
 order by gender; 
 
  
 
 