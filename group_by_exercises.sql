use ymir_employees;
select distinct title from titles;

select last_name, count(*) as occurances
from employees
where last_name like 'e%e'
group by last_name;

select concat(first_name, ' ', last_name) as full_name, count(*) as occurances
from employees
where last_name like 'e%e'
group by full_name;

select distinct last_name
from employees
where last_name like '%q%' and not last_name like '%qu%';

select count(*) as occurances, last_name
from employees
where last_name like '%q%' and not last_name like '%qu%'
group by last_name;

select gender, count(*) as occurances
from employees
where first_name = 'Irena' or
        first_name = 'Vidya' or
        first_name = 'Maya'
group by gender;