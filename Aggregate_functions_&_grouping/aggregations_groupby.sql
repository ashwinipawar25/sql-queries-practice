use business;
select * from employee;

-- agreegate function
select count(name) as total_number from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;

select avg(salary) from employee;

-- group by
select count(emp_id),name from employee group by name;
select sum(salary),name from employee where salary>50000 group by name;
select max(salary),name from employee where salary>50000 group by name;
select position,min(salary) from employee where salary<50000 group by position ;
select department,sum(salary) as total_salary from employee group by department;
select department ,count(*) as total_employee from employee group by department;
select department,max(salary) as highest_salary from employee group by department;
select gender ,count(*) as total from employee group by gender;
select is_active,count(*) as total_activeness from employee group by is_active;

-- having caluse
select department, sum(salary) from employee group by department having sum(salary)>250000;
select position, count(*) from employee group by position having sum(salary)<500000;
select name,min(salary) from employee group by name having min(salary)>50000;
select department,count(*) from employee group by department having count(*)<3;
select position ,count(*) from employee group by position having count(*)<2;

-- group by multiple columns
select department ,position ,avg(salary) from employee group by department,position;
select name,department,position,gender ,sum(salary) from employee group by name,department,position,gender;
select department,position,count(*) as total_employees from employee group by department,position;
select name,position ,max(salary) from employee group by name,position having max(salary)<500000;
select name,gender,min(salary) from employee group by name,gender

