# Write your MySQL query statement below
# The CONCAT() function is widely supported across various SQL databases (MySQL, PostgreSQL, SQL Server, etc.). It takes multiple string expressions as arguments and joins them together.
select user_id , 
concat(upper(left(name, 1)), lower(right(name, length(name)-1))) as name
from users 
order by user_id
  