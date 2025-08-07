use business;
select * from employee;

-- To find employees who earn more than average salary
select name,salary from employee where salary > (select avg(salary) from employee);

-- To get the highest paid employee
select * from employee where salary = (select max(salary) from employee);

-- to get employees from same Department as 'Rohit Kelani'
select * from employee where department = (select department from employee where name = 'Rohit Kelani');

-- Average salary of the department 
select department,avg(salary) as avg_salary from (select department,salary from employee) as dept_salaries group by department;

-- find employees who joined on same date as other 
select name,join_date from employee where join_date in (select join_date from employee group by join_date having count(*)>1);

-- get employee who earn more than the average salary in their department
select name,department,salary from employee e where salary > (select avg(salary) from employee where department = e.department);

-- get all departments where Average salary is more than Rs 60000
select department from employee where department in(select department from employee group by department having avg(salary)>60000); 

-- get position where Average salary is below Rs 50000
select distinct position from employee where position in (select position  from employee group by position having avg(salary)>50000 );

-- find employee whose salary is  more than the salary of any HR employee
select name,salary from employee where salary> any(select salary from employee where department = 'HR'); 

-- find employees whose salary is more than all finance department employees
select * from employee where salary>all(select salary from employee where department = 'Finance');

-- get employees whose salary equals the second highest salary
select *from employee where salary = (select distinct salary from employee order by salary desc limit 1 offset 1);

-- list all department having more than 1 female employee
select distinct department from employee where department in (select department from employee where gender ='female' group by department having count(*) > 1);

-- get employee who joined before the earliest 'HR' employee
select * from employee where join_date < (select min(join_date) from employee where department = 'HR');
 
