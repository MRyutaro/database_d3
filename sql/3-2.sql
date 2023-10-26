-- get the grades of all students

SELECT
    student_name,
    score,
    grade
FROM (
    SELECT
        (
            SELECT name
            FROM students
            WHERE id = student_id
        ) AS student_name,
        score,
        (
            SELECT grade
            FROM scores_grades
            WHERE score >= min_score AND score <= max_score
        ) AS grade
    FROM scores
) AS subquery;