# Write your MySQL query statement below
SELECT e1.employee_id, e1.name, COUNT(r.reports_to) AS reports_count, ROUND(AVG(r.age)) AS average_age 
FROM Employees e1
INNER JOIN Employees r 
ON e1.employee_id = r.reports_to 
GROUP BY e1.employee_id
ORDER BY e1.employee_id;
