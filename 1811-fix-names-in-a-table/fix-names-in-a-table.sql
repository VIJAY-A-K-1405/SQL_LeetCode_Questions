# The CONCAT() function is widely supported across various SQL databases (MySQL, PostgreSQL, SQL Server, etc.). It takes multiple string expressions as arguments and joins them together.
# The substr() is a function or method that extracts a portion of a string by specifying a starting position and an optional length.

select user_id , 
concat(upper(left(name, 1)), lower(right(name, length(name)-1))) as name
from users 
order by user_id


# select user_id, concat(upper(substr(name,1,1)), lower(substr(name,2))) as name  from users 
# order by user_id