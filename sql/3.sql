\dt

select * from students;
select * from subjects;
select * from scores;
select * from scores_grades;

select
    student_name,
    sum(credit_unit) as total_credit_units
from (
    -- TODO: if文を使ってgradeがFだった場合にはcredit_unit=0, それ以外の場合にはcredit_unitにする
    select
        (select name from students where id = student_id) as student_name,
        (
            select credit_unit
            from subjects
            where id = subject_id
        ) as credit_unit
    from scores
) as subquery
group by student_name;
