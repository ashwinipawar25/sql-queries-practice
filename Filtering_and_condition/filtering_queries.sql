-- already created database and table only practicing queries on that table
use business;
select * from employee;

-- # where #  comparision operators
select * from employee
 where salary>50000;

select * from employee
 where salary<50000;

select * from employee 
 where salary<=36000;

select name,department,salary from employee
 where salary<=50000;

select name,position,gender from employee
 where salary >=50000;

select * from employee 
 where department = 'IT';

select * from employee 
 where gender = 'male';

select * from employee 
 where department = 'finance';

select * from employee 
 where gender != 'female';

select * from employee
 where gender != 'male';

select * from employee 
 where salary != 50000;

select name,position,join_date,is_active from employee
 where is_active != 0;

-- # where # Logical Operator
-- or
select  * from employee where department = 'IT' or department = 'Finance';
select * from employee where salary>50000 or salary<50000;
select * from employee where gender='male' or gender = 'female';
select name,salary from employee  where name like 'a%' or name like 's%';
 
 -- and
 select * from employee where name like '%a' and name like 'a%';
 select * from employee where salary = 50000 and gender = 'male';
 select * from employee where salary>50000 and gender = 'male';
 select * from employee where salary<70000 and gender = 'male';
 
 -- not
 select * from employee where not salary = 50000;
 select * from employee where not gender = 'male';
 select * from employee where not gender = 'female';
 select * from employee where not department = 'IT';
 select * from employee where not department = 'sale';
 select * from employee where not salary >= 50000;
 select * from employee where not is_active = 1;
 
 -- # where #  in_between_like
 select * from employee where salary between 20000 and 50000;
 select * from employee where emp_id between 1 and 10;
 select * from employee where salary between 30000 and 70000;
 
 # where #  is null
 select	* from employee where department is null;
 select * from employee where position is null;
 select * from employee where name is null;
 select * from employee where is_active is null;
 select * from employee where salary is null;
 
 
 
 
 




