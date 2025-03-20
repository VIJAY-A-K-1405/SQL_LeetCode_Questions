# Write your MySQL query statement below
-- select product_id, quantity, price, year as first_year
-- from sales 
-- where (product_id, year) in (select product_id, min(year) from sales group by product_id);

SELECT s.product_id, s.quantity, s.price, s.year AS first_year
FROM sales s
JOIN (
    SELECT product_id, MIN(year) AS first_year
    FROM sales
    GROUP BY product_id
) sub ON s.product_id = sub.product_id AND s.year = sub.first_year;
