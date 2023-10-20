select
    student_name,
    subject_name,
    score,
    grade
from (
    select
        (
            select name
            from students
            where id = student_id
        ) as student_name,
        (
            select grade
            from scores_grades
            where score >= min_score and score <= max_score
        ) as grade,
        (
            select name
            from subjects
            where id = subject_id
        ) as subject_name,
        score
    from scores
) as subquery
