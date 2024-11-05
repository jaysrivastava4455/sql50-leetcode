#1633. Percentage of Users Attended a Contest

SELECT r.contest_id,
    ROUND(((COUNT(r.user_id)/(SELECT COUNT(*) FROM Users))*100),2) AS percentage
FROM Register r
JOIN Users u usING (user_id)
GROUP BY r.contest_id
ORDER BY 2 DESC,1 ASC