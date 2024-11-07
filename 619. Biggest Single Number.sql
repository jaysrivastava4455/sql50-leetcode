#619. Biggest Single Number

WITH num_count AS(
    SELECT num,COUNT(*) FROM MyNumbers GROUP BY num HAVING COUNT(num)=1
)
SELECT MAX(num) AS num FROM num_count