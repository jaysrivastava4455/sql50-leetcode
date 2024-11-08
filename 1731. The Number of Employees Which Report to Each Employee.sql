#1731. The Number of Employees Which Report to Each Employee

SELECT e.employee_id,e.name,COUNT(e1.employee_id) AS reports_count,
ROUND(AVG(e1.age),0) AS average_age
FROM Employees e
JOIN Employees e1
ON e.employee_id=e1.reports_to
GROUP BY e.employee_id
ORDER BY e.employee_id