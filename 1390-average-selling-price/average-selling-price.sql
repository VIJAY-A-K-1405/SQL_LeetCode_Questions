# Write your MySQL query statement below
select p.product_id, ifnull (round(sum(p.price * u.units) / sum(u.units) ,2), 0) as average_price 
from Prices p
left join unitssold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;

-- Write your PostgreSQL query statement below
-- SELECT p.product_id, COALESCE(ROUND(SUM(p.price * u.units) / NULLIF(SUM(u.units), 0)::NUMERIC, 2), 0) 
-- AS average_price FROM Prices p
-- LEFT JOIN unitssold u
-- ON p.product_id = u.product_id
-- AND u.purchase_date BETWEEN p.start_date AND p.end_date
-- GROUP BY p.product_id;