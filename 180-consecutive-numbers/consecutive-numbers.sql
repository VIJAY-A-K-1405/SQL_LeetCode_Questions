# Write your MySQL query statement below
select l1.num as ConsecutiveNums
from logs l1, logs l2, logs l3
where l1.id - l2.id = 1
and l2.id - l3.id = 1
and l1.num = l2.num
and l2.num = l3.num
and l3.num =  l1.num
group by l1.num

-- SELECT DISTINCT l1.num AS ConsecutiveNums 
-- FROM Logs l1
-- JOIN Logs l2 ON l2.id=l1.id+1 AND l1.num=l2.num
-- JOIN Logs l3 ON l3.id=l2.id+1 AND l2.num=l3.num