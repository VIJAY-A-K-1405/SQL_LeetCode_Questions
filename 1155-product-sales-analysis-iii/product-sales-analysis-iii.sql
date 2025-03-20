# Write your MySQL query statement below
select product_id, quantity, price, year as first_year
from sales 
where (product_id, year) in (select product_id, min(year) from sales group by product_id);