# Write your MySQL query statement below
-- select round(sum(if(min_order_date = min_customer_pref_delivery_date, 1,0)* 100) / count(min_order_date),2) as immediate_percentage
-- from 
-- (select delivery_id, customer_id,
-- min(order_date) as min_order_date,
-- min(customer_pref_delivery_date) as min_customer_pref_delivery_date 
-- from Delivery
-- group by customer_id) as v_table

select round(avg(order_date = customer_pref_delivery_date)*100,2) 
                 as immediate_percentage
from delivery
where (customer_id, order_date) in
(
    select customer_id, min(order_date)
    from delivery
    group by customer_id
)