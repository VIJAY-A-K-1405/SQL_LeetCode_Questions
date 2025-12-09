# Write your MySQL query statement below
select s.name from salesperson s
left join orders o on o.sales_id = s.sales_id
left join company c on c.com_id = o.com_id and c.name = 'RED'
group by s.sales_id, s.name
having count(c.com_id) = 0;