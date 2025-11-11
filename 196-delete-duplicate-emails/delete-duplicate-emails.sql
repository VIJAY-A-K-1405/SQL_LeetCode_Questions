--  Write your MySQL query statement below
--  Solution to delete all duplicate emails, keeping only one unique email with the smallest id.
--  For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

-- delete p1
-- from person p1
-- inner join person p2
-- on p1.email = p2.email
-- and p1.id > p2.id


-- select distinct email from Person;
 delete from Person P1 where P1.id not in (select * from (select min(id) from Person P2 group by P2.email) as v );