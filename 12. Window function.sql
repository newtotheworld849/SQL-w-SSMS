-- Window functions
--A window function performs a calculation across a set of rows that are somehow related to the current row, without collapsing the result set (i.e., no GROUP BY needed).

select gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id
group by gender

select dem.first_name, dem.last_name,gender,salary,
sum(salary) over(partition by gender order by dem.employee_id)  as avg_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id

--| Function Type   | Example                                    | What It Does                                    |
 ------------------ | ------------------------------------------ | ----------------------------------------------- |
 -- Aggregate       | `AVG(salary) OVER ()`                      | Overall average of salary (for all rows)        |
 -- Partitioned Avg | `AVG(salary) OVER (PARTITION BY dept)`     | Average salary **within each department**       |
 -- Ranking         | `ROW_NUMBER() OVER (ORDER BY salary DESC)` | Gives row number ordered by salary (descending) |
 -- Running Total   | `SUM(salary) OVER (ORDER BY hire_date)`    | Cumulative sum by hire date                     |
 -- Percent Rank    | `PERCENT_RANK() OVER (ORDER BY salary)`    | Percentile rank of each salary                  |




select dem.employee_id,dem.first_name, dem.last_name,gender,salary,
row_number() over(partition by gender order  by gender DESC) as Rolling_Number,
rank() over(partition by gender order  by salary DESC) as Rank_Number,
dense_rank() over(order  by salary DESC) as Dense_Rank_Number
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id