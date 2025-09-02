-- Having vs Where

select gender, avg(age)
from employee_demographics
where avg(age) >40
group by gender
-- this query does not work, as the sequence is wrong


select gender, avg(age) as 'Average'
from employee_demographics
group by gender
having avg(age) > 40 
-- this will work

select occupation, avg(salary) as 'Average salary'
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) >75000