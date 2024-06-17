#1204. Last Person to Fit in the Bus

WITH weight_total AS (
    SELECT person_name,SUM(weight) OVER (ORDER BY turn) AS bus_weight
    FROM Queue
)
SELECT person_name
        FROM weight_total
        WHERE bus_weight<=1000
        ORDER BY bus_weight DESC LIMIT 1;