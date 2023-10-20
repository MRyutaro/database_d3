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

explain select
    (
        select name
        from subjects
        where id = subject_id
    ) as subject_name,
    (
        select (
            select name
            from students
            where id = student_id
        )
        from (
            select student_id
            from scores
            where subject_id = subquery.subject_id and score = max_score
        ) as subquery
    ) as student_name,
    max_score
from (
    select
        subject_id,
        max(score) as max_score
    from scores
    group by subject_id
) as subquery
order by subject_name;
