-- here already created database and table 
-- database is business and table is employee
use business;

-- so we can retrive all record from table
select * from employee;

-- retrive specifics column from table 
select emp_id,name,salary from employee;
select name,department,salary from employee;

-- get all unique record in the employee table
select distinct department from employee;
select distinct position from employee;
select distinct gender from employee;

-- where clause
select * from employee where emp_id = 5;
select * from employee where emp_id between 1 and 5;
select * from employee where salary>=50000;
select name from employee where department='IT';
select salary from employee where emp_id >=6 limit 3;
select name from employee where gender = 'male';
select department from employee where salary<=50000;

-- limit query is restrict the number of records returned by the query
select * from employee limit 3;
select * from employee  order by emp_id desc limit 5;
select emp_id,name,department,salary,is_active from employee limit 10;
select emp_id,name,salary from employee where salary>50000 limit 5;
select * from employee where department = 'IT' limit 2;

-- order by clause is sort the record in ascending and descending order based on the one or more column
select * from employee order by emp_id;
select * from employee order by emp_id desc	;
select emp_id,name,position from employee order by name asc;
select emp_id,name,position,salary from employee order by salary desc;
select  name ,position from employee order by salary; 



