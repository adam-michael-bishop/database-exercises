use ymir_employees;
# 2.
select concat(first_name, ' ', last_name) as full_name from employees
where last_name like 'e%e';

select * from employees
where month(birth_date) = 12 and day(birth_date) = 25;

select * from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25;

select * from employees
where year(hire_date) between 1990 and 1999
  and month(birth_date) = 12
  and day(birth_date) = 25
order by birth_date, hire_date desc;

select datediff(curdate(), hire_date) as days_working from employees
where year(hire_date) between 1990 and 1999 and month(birth_date) = 12 and day(birth_date) = 25;