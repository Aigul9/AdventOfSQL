with grouped as (
  select user_type, user_id, count(distinct goal_id) as cnt
  from user_goals
  where goal_status = 'Completed'
  group by user_type, user_id
)
select user_type, avg(cnt)
from grouped
group by user_type
