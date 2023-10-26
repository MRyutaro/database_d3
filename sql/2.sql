SELECT
    (SELECT name FROM students WHERE id = student_id),
    AVG(score) AS avg_score
FROM scores
GROUP BY student_id
ORDER BY avg_score DESC;