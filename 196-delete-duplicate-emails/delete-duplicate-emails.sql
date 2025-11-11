# Write your MySQL query statement below
# Solution to delete all duplicate emails, keeping only one unique email with the smallest id.
# For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

delete p1
from person p1
inner join person p2
on p1.email = p2.email
and p1.id > p2.id
