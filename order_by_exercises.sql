use ymir_employees;
# 2.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;
# 3.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;
# 4.
select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;
# 5.
select * from employees
where last_name like '%e%'
order by emp_no;
# 6.
select * from employees
where last_name like '%e%'
order by emp_no desc;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name desc, first_name desc;