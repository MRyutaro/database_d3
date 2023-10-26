-- get the grade of the student with student_id = '822xxx01';

SELECT
    student_id,
    score,
    grade
FROM (
    SELECT
        student_id,
        score,
        (
            SELECT grade
            FROM scores_grades
            WHERE score >= min_score AND score <= max_score
        ) AS grade
    FROM scores
) AS subquery
WHERE student_id = '822xxx01';