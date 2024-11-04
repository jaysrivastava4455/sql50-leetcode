#1280. Students and Examinations

SELECT s.student_id,s.student_name,b.subject_name,
    COUNT(e.subject_name) AS attended_exams 
FROM Students s
JOIN Subjects b
LEFT JOIN Examinations e
ON e.student_id=s.student_id AND e.subject_name=b.subject_name
GROUP BY 1,3
ORDER BY 1,3;