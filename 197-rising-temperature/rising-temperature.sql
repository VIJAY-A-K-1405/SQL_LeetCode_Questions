-- Write your PostgreSQL query statement below
-- select w1.id from weather w1, weather w2
-- where datediff(w1.recordDate, w2.recordDate) =1 
-- and (w1.temperature < w2.temperature);

SELECT w1.id
FROM weather w1
JOIN weather w2 
ON w1.recordDate = w2.recordDate + INTERVAL '1 day'
WHERE w1.temperature > w2.temperature;