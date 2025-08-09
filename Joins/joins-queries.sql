use business;
select * from department;
select * from employee;

-- joins
-- inner join
select e.emp_id,e.name,e.department
 from employee e inner join department d 
 on e.department = d.dept_name;
 
 select * from employee e 
 inner join department d 
 on e.department = d.dept_name;
 
 select d.dep_id,d.dept_name,d.location,e.salary,e.position from department d 
 inner join employee e
 on d.dept_name = e.department;
 
 -- left join
 select * from employee e 
 left join department d
 on e.department = d.dept_name;
 
 select e.emp_id,e.name,e.department,e.position,d.location from employee e 
 left join department d
 on e.department = d.dept_name;
 
 -- right join
 select * from employee e 
 right join department d
 on e.department = d.dept_name;
 
 select d.dep_id,e.name,d.dept_name,d.location,e.salary from department d 
 right join employee e
 on d.dept_name = e.department ;
 
 -- full outer join
 select * from employee e 
 left join department d
 on e.department = d.dept_name
 union
 select * from employee e 
 left join department d
 on e.department = d.dept_name;
 
 select d.dep_id,d.dept_name,d.location,e.salary from department d 
 left join employee e 
 on d.dept_name = e.department
 union
 select d.dep_id,d.dept_name,d.location,e.salary from department d
 right join employee e 
 on d.dept_name = e.department;
 
 -- self join
 select * from employee e 
 left join employee d 
 on e.emp_id = d.emp_id; 
 
 select e.emp_id,e.name,e.department,e.salary
 from employee e right join employee e1
 on e.department = e1.department;
 
 -- cross join
 select * from employee e 
 cross join department d;
 
 select * from employee e 
 cross join employee d;
 
 select e.emp_id,e.name,e.department,e.salary,row_number() over(partition by department order by emp_id ) as ranking_number from employee e
 cross join employee d;
