#197. Rising Temperature

SELECT w1.Id as Id FROM Weather w
JOIN Weather w1 
ON w.recordDate=w1.recordDate-INTERVAL 1 DAY
WHERE w1.temperature>w.temperature 