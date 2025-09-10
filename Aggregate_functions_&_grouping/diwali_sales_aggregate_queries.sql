-- downloading  CSV from Google Sheets and Importing into MySQL
-- diwali sales data
-- analyzing data using Aggregate function

select * 
from diwali_sales_data;

-- Aggregate functions

-- count() function
select count(cust_name) 
from diwali_sales_data;

select count(gender) 
from diwali_sales_data 
where gender = 'f';

select cust_name,state,min(amount) 
from diwali_sales_data 
group by Cust_name,state 
having min(amount)>13500;

-- max() function
select max(amount) 
from diwali_sales_data;

select cust_name,age,state,max(amount) 
from diwali_sales_data
group by Cust_name,age,State
order by age desc;

select cust_name,max(amount)
from diwali_sales_data
group by Cust_name
having	max(amount)>23500
order by Cust_name desc
limit 5 offset 10; 

select cust_name,max(amount)
from diwali_sales_data
group by Cust_name
having	max(amount)>23500
order by Cust_name desc
limit 10,5; 

-- min() function
select min(amount)
from diwali_sales_data;

select min(age)
from diwali_sales_data;

select cust_name,gender,zone,min(amount)
from diwali_sales_data
group by Cust_name,gender,zone
having	min(amount)<23500
order by zone asc;

select cust_name,state,min(age)
from diwali_sales_data
group by Cust_name,state
having min(age)>20;

-- sum() function
select sum(age)
from diwali_sales_data;

select sum(amount)
from diwali_sales_data;

select sum(age_group)
from diwali_sales_data;

select Cust_name,sum(age) as total_age
from diwali_sales_data
group by Cust_name
having sum(age)<30;

-- avg() function
select avg(amount)
from diwali_sales_data;

select avg(age) as average_age
from diwali_sales_data;




