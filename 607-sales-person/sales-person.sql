# Write your MySQL query statement below
-- select s.name from salesperson s
-- left join orders o on o.sales_id = s.sales_id
-- left join company c on c.com_id = o.com_id and c.name = 'RED'
-- group by s.sales_id, s.name
-- having count(c.com_id) = 0;

select s.name
from orders o
join company c on c.com_id = o.com_id and c.name = 'red'
right join salesperson s on s.sales_id = o.sales_id
where o.sales_id is null