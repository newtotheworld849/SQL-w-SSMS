-- Group by

select *
from employee_demographics

select gender, avg(age) as 'Average age', max(age) as 'Max age', min(age) as 'Min age', count (age) as 'Count'
from employee_demographics
group by gender


-- order by
select *
from employee_demographics
order by gender, age desc -- but age, gennder order does NOT work, Order has priority coming from the left to the right.
-- order by 5, 4 shows the same outcome. the numbers represent the column position (but not recommended to use in practice as the column position can be changed.)


