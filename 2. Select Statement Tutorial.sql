select *
from Parks_and_Recreation.dbo.employee_demographics;


select first_name, 
last_name, 
birth_date, 
age, 
(age +10)*10 as 'Age+10'
from Parks_and_Recreation.dbo.employee_demographics;

-- PEMDAS

select distinct first_name, gender
from Parks_and_Recreation.dbo.employee_demographics;
