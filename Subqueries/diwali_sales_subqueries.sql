-- downloading  CSV from Google Sheets and Importing into MySQL
-- diwali sales data

use sample;
select * from diwali_sales_data;

-- Q.1 Customer who purchased above average amount
select Cust_name,amount
from diwali_sales_data
where amount > (select avg(amount) from diwali_sales_data);

-- Q.2 Find highest order amount for each state
select state,cust_name,amount
from diwali_sales_data d 
where amount = (select max(amount) from diwali_sales_data where state = d.state);

-- Q.3 customer who ordered more than the average number of ordered
select cust_name, orders
from diwali_sales_data
where Orders >(select avg(orders) from diwali_sales_data);

-- Q.4 Customers with max orders in each product category
select product_category,cust_name,orders 
from diwali_sales_data d
where orders = (
select max(orders)
from diwali_sales_data
where Product_Category = d.Product_Category);

-- 
