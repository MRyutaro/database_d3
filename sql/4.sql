SELECT
    subject_name,
    student_name,
    score
FROM (
    SELECT
        (
            SELECT name
            FROM subjects
            WHERE id = subject_id
        ) AS subject_name,
        (
            SELECT name
            FROM students
            WHERE id = student_id
        ) AS student_name,
        score
    FROM scores
) AS subquery
ORDER BY subject_name;

SELECT
    subject_name,
    student_name
FROM (
    SELECT
        (
            SELECT name
            FROM subjects
            WHERE id = subject_id
        ) AS subject_name,
        (
            SELECT name
            FROM students
            WHERE id = student_id
        ) AS student_name,
        score
    FROM scores
) AS subquery
WHERE score >= (
    SELECT max_score + 1
    FROM scores_grades
    WHERE grade = 'F'
)
ORDER BY subject_name;
