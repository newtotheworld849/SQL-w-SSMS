-- string Functions

select len ('skyfall')


select first_name, len(first_name)
from employee_demographics
order by 2

select upper('sky')
select lower('SKY')

select upper(first_name), upper(last_name)
from employee_demographics

--white trim
select trim('            sky              ')
select ltrim('            sky              ')
select rtrim('            sky              ')


-- how many characters we want to see
--the first 2 characters
select left(first_name,2)
from employee_demographics

- the 3th and 4th letters
select substring(first_name, 3, 2)
from employee_demographics

select first_name
from employee_demographics