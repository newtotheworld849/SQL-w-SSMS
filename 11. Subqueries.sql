-- Subqueries

select *
from employee_demographics
where employee_id in 
					(select employee_id
						from employee_salary
						where dept_id=1)



select first_name, salary, 
(select avg(salary) 
from employee_salary )as Avg_salary
from employee_salary


-- should give the column names with AS
select *
from (select gender, avg(age) as Avg, max(age) as MAX, min(age) as MIN, count(age) AS NO
from employee_demographics
group by gender) as age_stats;



