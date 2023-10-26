SELECT
    student_name,
    SUM(
        CASE
            WHEN grade = 'F' THEN 0
            ELSE credit_units
        END
    ) AS total_credit_units
FROM (
    SELECT
        (
            SELECT name
            FROM students
            WHERE id = student_id
        ) AS student_name,
        (
            SELECT grade
            FROM scores_grades
            WHERE score >= min_score AND score <= max_score
        ) AS grade,
        (
            SELECT credit_units
            FROM subjects
            WHERE id = subject_id
        ) AS credit_units
    FROM scores
) AS subquery
GROUP BY student_name;