-- downloading  CSV from Google Sheets and Importing into MySQL
-- diwali sales data

use sample;
select * from diwali_sales_data;

-- Where clause
-- SQL AND
select * 
from diwali_sales_data 
where gender = 'm' and Occupation = 'Govt';

select distinct state  
from diwali_sales_data 
where zone = 'central' and gender ='f';

select cust_name 
from diwali_sales_data 
where age>=25 and state = 'gujarat';

-- SQL OR
select *
from diwali_sales_data
where age<=35 or gender = 'm';

select cust_name 
from diwali_sales_data
where age_group = 0-17 or Product_Category = 'auto';

select cust_name,gender,age,state as address 
from diwali_sales_data
where orders > 2 or gender = 'f';

-- SQL BETWEEN
select cust_name 
from diwali_sales_data
where amount between 23000 and 235000;

select * 
from diwali_sales_data
where Age between 10 and 50;

-- SQL NOT
select *
from diwali_sales_data
where not gender = 'm';

select gender ,Cust_name
from diwali_sales_data
where not gender = 'f';

--	SQL NULL VALUES
select *
from diwali_sales_data
where Cust_name is null;

select *
from diwali_sales_data
where Cust_name is not null;

