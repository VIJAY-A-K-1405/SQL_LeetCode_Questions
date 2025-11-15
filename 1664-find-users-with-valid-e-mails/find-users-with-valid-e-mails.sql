# Write your MySQL query statement below
-- REGEXP or RLIKE (MySQL): These operators are used in the WHERE clause to filter rows where a string 
-- column matches a specified regular expression pattern.

-- select * from users
-- where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$'

select *
from Users
where regexp_like(mail,'^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$','c');