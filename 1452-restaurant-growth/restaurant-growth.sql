# Write your MySQL query statement below
-- The DATEADD() function adds a time/date interval to a date and then returns the date.
-- The DATE_SUB() function subtracts a time/date interval from a date and then returns the date.

with cte as 
(select visited_on, sum(amount) as daily_amount
from Customer
group by visited_on)

select visited_on,
(sum(daily_amount) over (order by visited_on rows between 6 preceding and current row)) as amount,
round(avg(daily_amount) over (order by visited_on rows between 6 preceding and current row), 2) as average_amount
from cte

limit 1000 offset 6

-- select visited_on, 
-- (
--     select sum(amount) from customer
--     where visited_on between date_sub(c.visited_on, interval 6 day)
--     and c.visited_on
-- ) as amount, 
-- round((
--     select sum(amount)/7 from customer
--     where visited_on between date_sub(c.visited_on, interval 6 day)
--     and c.visited_on
-- ), 2) as average_amount
-- from Customer c
-- where visited_on >= (
--     select date_add(min(visited_on), interval 6 day) from customer
-- )
-- group by visited_on
-- order by visited_on