with av as (
    select
        r.reindeer_name, avg(t.speed_record) as avg_speed
    from Reindeers r
        join Training_Sessions t
            on r.reindeer_id = t.reindeer_id
    where r.reindeer_name != 'Rudolf'
    group by r.reindeer_name, t.exercise_name
)
select reindeer_name, round(max(avg_speed), 2) as top_speed
from av
group by reindeer_name
order by 2 desc
limit 3;