#570. Managers with at Least 5 Direct Reports

SELECT e.name FROM Employee e
LEFT JOIN Employee e1 ON
e.id=e1.managerId
GROUP BY e.id
HAVING COUNT(e1.managerid)>=5