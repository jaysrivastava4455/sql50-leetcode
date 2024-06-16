610. Triangle Judgement

SELECT *,
        CASE 
            WHEN x+y<=z THEN 'No' 
            WHEN y+z<=x THEN 'No' 
            WHEN x+z<=y THEN 'No' ELSE 'Yes' END AS triangle
    FROM Triangle