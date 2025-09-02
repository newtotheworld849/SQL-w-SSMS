-- WHERE Clause

select *
from employee_salary
where first_name='Leslie';

select *
from employee_salary
where salary >= 50000

--not equal to '!='
select *
from employee_demographics
where gender !='female'

select *
from employee_demographics
where birth_date > '1985-01-01'

--and or not -- Logical Operators

select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'


select *
from employee_demographics
where (first_name='Leslie' and age=44) or age >55

-- > text does not count capital letter or small letter

--like statement
-- % (anything) amd _ (specific value)
select *
from employee_demographics
where first_name like 'a%' -- any name starting with a / %a% any before a and anter a
-- where first_name like 'a___%' means a + 3 characters + any after

select *
from employee_demographics
where birth_date like '1989%'