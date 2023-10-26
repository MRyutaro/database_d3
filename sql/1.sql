SELECT
    (SELECT name FROM subjects WHERE id = subject_id) AS subject_name,
    AVG(score) AS avg_score
FROM scores
GROUP BY subject_id
ORDER BY avg_score DESC;