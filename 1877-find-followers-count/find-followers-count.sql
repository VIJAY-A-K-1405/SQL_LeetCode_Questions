# Write your MySQL query statement below
-- select user_id, count(user_id) as followers_count
-- from followers
-- group by user_id
-- order by user_id;

SELECT user_id , COUNT(DISTINCT follower_id ) AS followers_count
FROM Followers 
GROUP BY user_id