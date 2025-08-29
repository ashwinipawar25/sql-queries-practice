show databases;
-- crate database

create	database business;
-- use database

use business;

-- crate table
create table employee (emp_id int primary key,name varchar(50),department varchar(50), position varchar(50),salary decimal(10,2),join_date date,gender varchar(10),is_active boolean);
-- insert record in table
insert into employee (emp_id,name,department,position,salary,join_date,gender,is_active) values 
(1,'Anita deshmukh','HR','HR Manager',55000.00,'2018-03-01','female',True),
(2,'Rohit kulkarni','IT','Software Engineer',72000.00,'2020-06-15','Male',True),
(3,'Snehal Patil','Finance','Accountant',48000.00,'2019-09-10','Female',True),
(4,'Amit joshi','Marketing','Marketing lead',60000.00,'2017-11-25','male',True),
(5,'Kiran More','IT','Data Analyst',70000.00,'2021-01-20','male',True),
(6,'Neha Rane','Finance','Finance Analyst',65000.00,'2018-07-23','female',false),
(7,'Sagar shinde','HR','Recruiter',45000.00,'2022-02-10','male',True),
(8,'Pooja Swavant','IT','UI/UX Designer',68000.00,'2022-02-10','female',True),
(9,'Nikhil Bhosale','Sales','Sales Executive',47000.00,'2019-04-10','male',True),
(10,'Priya Naik','admin','office Assistant',35000.00,'2016-02-10','female',True),
(11,'Manoj Pawar','Sales','Sales Manager',75000.00,'2017-05-22','male',True),
(12,'Komal ghokhale','IT','Backend development',72000.00,'2021-06-07','female',True),
(13,'Nilesh jadhav','IT','Frontend development',71000.00,'2021-09-25','male',True),
(14,'Akshata pawar','Marketing','content Writer',46000.00,'2022-02-03','female',True),
(15,'Rajesh chavan','Admin','Admin office',45000.00,'2015-09-15','male',True);

-- retrive the data
select * from employee;
