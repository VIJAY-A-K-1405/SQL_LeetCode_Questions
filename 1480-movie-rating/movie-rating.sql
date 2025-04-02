-- # Write your MySQL query statement below
(select u.name as results
from users u 
left join MovieRating mr
on u.user_id = mr.user_id
group by u.user_id
order by count(mr.user_id) desc , u.name 
limit 1)
union all
(select m.title as results
from movies m  
left join MovieRating mr
on  m.movie_id = mr.movie_id
where extract(year_month from  created_at) = 202002
group by m.movie_id
order by avg(mr.rating) desc , m.title 
limit 1)

-- (SELECT name as results
-- FROM Users U JOIN MovieRating R ON U.user_id = R.user_id
-- GROUP BY U.user_id
-- ORDER BY Count(*) DESC, name
-- LIMIT 1)
-- UNION ALL
-- (SELECT m.title as results
-- FROM Movies m Right JOIN MovieRating R ON m.movie_id = R.movie_id
-- WHERE R.created_at BETWEEN '2020-02-01' AND '2020-02-28'
-- GROUP BY m.movie_id
-- ORDER BY avg(rating) DESC, m.title
-- LIMIT 1)