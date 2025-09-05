--case statements

select first_name, last_name,age,
case
	when age<30 then  'young'
	when age between 31 and 50 then 'middle age'
end as AGE_label
from employee_demographics

--pay increase and bonus
-- <50000 = 5%
-- >50000 = 7%
-- Finance  = 10%
select first_name, last_name, salary, 
case
	when occupation = 'manager' then salary*1.1
	when salary <50000 then salary*1.05
	when salary >50000 then salary*1.07
	
end as new_salary,

case
	when dept_id=6 then salary *.1
	else 0
end as Bonus

from employee_salary

