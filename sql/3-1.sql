-- select grade where student_id = '822xxx01';

select
    student_id,
    score,
    grade
from (
    select
        student_id,
        score,
        (
            select grade
            from scores_grades
            where score >= min_score and score <= max_score
        ) as grade
    from scores
) as subquery
where student_id = '822xxx01';