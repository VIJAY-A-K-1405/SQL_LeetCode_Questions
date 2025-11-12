# Write your MySQL query statement below
-- The GROUP_CONCAT() function in SQL is an aggregate function used to concatenate values from multiple 
-- rows within a group into a single string. This function is primarily available in MySQL, MariaDB, and SQLite.
-- Other SQL databases, like PostgreSQL and SQL Server, use similar functions such as STRING_AGG() or FOR XML 
-- PATH() to achieve the same result. 

select sell_date,
count(distinct product) as num_sold, 
group_concat(distinct product separator ',') as products 
from Activities 
group by sell_date
order by sell_date