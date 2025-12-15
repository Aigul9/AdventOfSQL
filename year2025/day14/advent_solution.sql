with ranked as (
  select user_name, artist, count(1) as play_count, row_number() over(partition by user_name order by count(1) desc) as rn
  from listening_logs
  group by user_name, artist
)
select user_name, artist, play_count
from ranked
where rn <= 3
order by user_name, play_count desc
