# Write your MySQL query statement below
-- The DENSE_RANK() function assigns ranks to rows based on specified criteria, similar to RANK(). 
-- Unlike RANK(), it avoids gaps by giving tied rows consecutive ranks, ensuring a continuous sequence. 
-- It is especially useful when a clear, uninterrupted ranking is needed for accurate analysis and reporting.

WITH employee_department AS
    (
    SELECT d.id, 
        d.name AS Department, 
        salary AS Salary, 
        e.name AS Employee, 
        DENSE_RANK()OVER(PARTITION BY d.id ORDER BY salary DESC) AS rnk
    FROM Department d
    JOIN Employee e
    ON d.id = e.departmentId
    )
SELECT Department, Employee, Salary
FROM employee_department
WHERE rnk <= 3

-- select Department , Employee , Salary from 
-- (select d.name as Department , 
-- e.name as Employee , 
-- e. salary as Salary,
-- dense_rank() over (partition by d.name order by e.salary desc) as ranks
-- from employee e
-- left join Department d 
-- on e.departmentId = d.id) v
-- where ranks <=3