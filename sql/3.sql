select
    student_name,
    score,
    grade
from (
    select
        (
            select name
            from students
            where id = student_id
        ) as student_name,
        score,
        (
            select grade
            from scores_grades
            where score >= min_score and score <= max_score
        ) as grade
    from scores
) as subquery
