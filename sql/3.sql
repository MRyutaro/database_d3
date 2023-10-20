explain
select
    student_name,
    sum(
        case
            when grade = 'F' then 0
            else credit_units
        end
    ) as total_credit_units
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
        ) as credit_units
    from scores
) as subquery
group by student_name;