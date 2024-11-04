577. Employee Bonus

SELECT e.name,b.bonus
FROM Employee e
LEFT JOIN Bonus b
USING (empId)
WHERE bonus IS NULL OR bonus<1000;