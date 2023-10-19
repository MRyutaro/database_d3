select (
    select name from subjects where id = subject_id
) as subject_name, avg(score) as avg_score
from scores
group by subject_id;