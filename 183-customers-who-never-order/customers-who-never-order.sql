# Write your MySQL query statement below
-- Using JOIN is generally more efficient in SQL Server than using subqueries or multiple separate queries to achieve the same result.

-- select name as customers
-- from customers 
-- where id not in (
--     select customerId from orders
-- )

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o 
ON c.id = o.customerId
WHERE o.customerId IS NULL;

