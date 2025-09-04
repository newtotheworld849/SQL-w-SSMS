-- limit & Aliasing
-- * after the number is important

-- to show the first 3 rows
select top 3 *
from employee_demographics


--these two are different. 
--to show the top 3 AFTER the table is ordered by age

 select top 3 *
from employee_demographics
order by age desc

-- after ordering, show the 3rd row
select *
from employee_demographics
order by age desc
offset 2 rows fetch next 1 rows only

-- after ordering, show the following 2 rows
select *
from employee_demographics
order by age desc
offset 2 rows fetch next 2 rows only

--Aliasing (can skip 'AS')
select gender, avg(age) AS avg_age
from employee_demographics
group by gender
having avg(age)  >40
