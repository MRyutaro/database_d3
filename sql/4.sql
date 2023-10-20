select
    subject_name,
    student_name,
    score
from (
    select
        (
            select name
            from subjects
            where id = subject_id
        ) as subject_name,
        (
            select name
            from students
            where id = student_id
        ) as student_name,
        score
    from scores
) as subquery
order by subject_name;

select
    subject_name,
    student_name
from (
    select
        (
            select name
            from subjects
            where id = subject_id
        ) as subject_name,
        (
            select name
            from students
            where id = student_id
        ) as student_name,
        score
    from scores
) as subquery
where score >= (
    select max_score + 1
    from scores_grades
    where grade = 'F'
)
order by subject_name;