-- joins

select *
from employee_demographics

select *
from employee_salary

-- inner join
select *
from employee_demographics
-- this is primary dataset which will bring the other.
join employee_salary
	on employee_demographics. employee_id= employee_salary. employee_id
	-- . between the file name and column name is important to indicate which column will be bring from which dateset. 
	
-- if the file name is too long and repetitively use in the following code, a name can be given with 'as', the outcome is same as the one above
select *
from employee_demographics as DEM
join employee_salary as SAL
	on DEM. employee_id= SAL. employee_id

--outer join
select *
from employee_demographics as DEM
left join employee_salary as SAL
	on DEM. employee_id= SAL. employee_id


select *
from employee_demographics as DEM
right join employee_salary as SAL
	on DEM. employee_id= SAL. employee_id

-- make a secret santa list with join tables 'on' 
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp1.employee_id as emp_santa,
emp2.first_name as first_name_santa,
emp2.last_name as last_name_santa
from employee_salary emp1
join employee_salary emp2
on  emp1.employee_id +1= emp2.employee_id

--joining multiple tables
select *
from employee_demographics
join employee_salary
on employee_demographics.employee_id= employee_salary.employee_id
join parks_departments
on employee_salary.dept_id = parks_departments.department_id
