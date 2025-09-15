 -- create the database bank_db
 create database bank_db;
 
use bank_db;

-- create table employee
create table employee(
 emp_id int primary key auto_increment,
 name varchar(50) not null,
 desig varchar(50) default 'probation',
 dept varchar(20) not null
 );
 
 -- describe the table employee
 desc employee;
 
 -- insert values in the table
 insert into employee values
 (101,"Raju","Manager","Loan"),
 (102,"Sham","Cashier","Cash"),
 (103,"Paul","Associate","Loan"),
 (104,"Alex","Accountant","Acount"),
 (105,"Victor","Associate","Deposite");
 
 -- show all the data in that table
 select * 
 from employee;

 -- show only emp_id and name from employee table
 select emp_id,name 
 from employee;
 
 -- show the data based on the condition
 select * 
 from employee 
 where dept = 'loan';

 select * 
 from employee 
 where emp_id = 101;

 update employee 
 set dept = 'IT' 
 where emp_id = 104;
 
 -- delete the record from the table
 delete from 
 employee where 
 emp_id = 102;
 
 -- string function
 -- 1.concatanation (combine the both words)
 select concat('hey',' buddy!') as concatanation;
 
 -- combine the name and department using concat() function
 select emp_id,concat(name,'- ',  dept) as name_with_dept 
 from employee;
 
 select emp_id,concat_ws(' - ', name,dept) as name_with_department 
 from employee;
 
 -- 2.substring
select substring('hello Buddy',1,5); 

-- 3.replace
select replace('hey buddy','hey','hello');
select replace(emp_id,10,1000) as newemp_id from employee;

-- 4.upper() and lower()
select upper('abc') as capital_size; -- use UCASE where upper 
select lower('ABC') as small_size; -- use LCASE where lower

-- 5.char_length()
select char_length('abcs');

select name, char_length(name) as length 
from employee;

select * from employee 
where char_length(name) > 5;

-- 6.insert()
select insert('hey Wassup', 5 ,0,'Raju');

-- 7.left()
select left('hey buddy raju',3);

-- 8.right()
select right('hey buddy raju',4);

-- 9.repeat()
select repeat('hahaha  ',5);

-- 10.trim()
select trim('   password! hello ');







 
 
 
