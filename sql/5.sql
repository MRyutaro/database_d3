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
    (
        SELECT name
        FROM subjects
        WHERE id = subject_id
    ) AS subject_name,
    (
        SELECT (
            SELECT name
            FROM students
            WHERE id = student_id
        )
        FROM (
            SELECT student_id
            FROM scores
            WHERE subject_id = subquery.subject_id AND score = max_score
        ) AS subquery
    ) AS student_name,
    max_score
FROM (
    SELECT
        subject_id,
        MAX(score) AS max_score
    FROM scores
    GROUP BY subject_id
) AS subquery
ORDER BY subject_name;
