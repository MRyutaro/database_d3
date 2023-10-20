select
    student_name,
    (
        case
            when grade = 'F' then 0
            else credit_units
        end
    ) as credit_units,
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
            select credit_units
            from subjects
            where id = subject_id
        ) as credit_units,
        score
    from scores
) as subquery
