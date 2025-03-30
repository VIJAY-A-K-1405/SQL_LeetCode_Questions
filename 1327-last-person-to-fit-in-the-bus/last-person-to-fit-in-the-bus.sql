# Write your MySQL query statement below
select v1.person_name from queue v1
inner join queue v2
on v1.turn >= v2.turn
group by v1.turn
having sum(v2.weight) <= 1000
order by v1.turn desc limit 1;