use ymir_employees;

select concat(first_name, ' ', last_name) as full_name
from employees
limit 10;

select concat(emp_no, ' - ', last_name, ', ',first_name) as full_name, birth_date
from employees
limit 10;