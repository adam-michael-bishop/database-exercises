use ymir_employees;

# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the current manager for that department.
select d.dept_name, concat(e.first_name, ' ', e.last_name)
from employees as e
         join dept_manager as dm on e.emp_no = dm.emp_no
         join departments as d on dm.dept_no = d.dept_no
where to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
select d.dept_name, concat(e.first_name, ' ', e.last_name)
from employees as e
         join dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
where to_date = '9999-01-01'
  and gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

select t.title, count(*) as current_employees
from employees as e
         join titles as t on e.emp_no = t.emp_no
         join dept_emp de on e.emp_no = de.emp_no
where dept_no = 'd009'
  and t.to_date = '9999-01-01'
  and de.to_date = '9999-01-01'
group by title
order by current_employees desc;

# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

select d.dept_name, concat(e.first_name, ' ', e.last_name) as full_name, salary
from employees as e
         join dept_manager as dm on e.emp_no = dm.emp_no
         join departments as d on dm.dept_no = d.dept_no
         join salaries s on dm.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01';

# Find the names of all current employees, their department name, and their current manager's name .
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

select concat(e.first_name, ' ', e.last_name) as employee_name,
       d.dept_name,
       concat(em.first_name, ' ', em.last_name) as manager_name
from employees as e
         join dept_emp as de on de.emp_no = e.emp_no
         join departments as d on d.dept_no = de.dept_no
         join dept_manager as dm on d.dept_no = dm.dept_no
         join employees as em on dm.emp_no = em.emp_no
where de.to_date = '9999-01-01' and  dm.to_date = '9999-01-01';
