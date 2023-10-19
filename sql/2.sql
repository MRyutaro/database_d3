select 
    (select name from students where id = student_id),
    avg(score) as avg_score
from scores
group by student_id
order by avg_score desc;