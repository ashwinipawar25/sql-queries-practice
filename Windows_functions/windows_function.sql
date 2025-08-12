-- windows function()
use business;
select * from employee;

-- Rank()
select name,department,salary,
Rank() over(order by salary desc) as salary_rank
from employee;

select name,department,salary,
Rank() over(partition by department order by salary Desc) as dept_salary_rank 
from employee;

-- Dense_Rank()
select name,salary,
dense_rank() over(order by salary desc) as dense_salary_rank
from employee;

select name,position,salary,
dense_rank() over(partition by department order by name desc)
from employee;

-- Row_Number()
select name,join_date,
row_number() over(order by join_date desc) as join_order 
from employee;

select name,department,position,join_date,
row_number() over(partition by department order by  name desc) as department_name_rank
from employee;

-- agrregate function 
select name,department,salary,
max(salary) over(order by salary ) as salary_maximum 
from employee;

select emp_id,name,position,is_active,
min(salary) over(partition by position order by gender desc) as min_salary_by_position
from employee;

select department,name,
avg(salary) over(partition by department) as avg_salary_in_dept 
from employee;

select emp_id,name,position,is_active,
count(salary) over(partition by position order by gender desc) as count_salary_by_position,
sum(salary) over(partition by position order by gender desc) as sum_salary_by_position
from employee;


--  Lag()
select department,name,salary,
lag(emp_id) over(order by salary desc) as prev_salary
from employee;

-- Lead()
select name,department,position,salary,
lead(emp_id) over(partition by department order by salary) 
from employee;


