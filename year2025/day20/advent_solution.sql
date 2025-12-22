with rolling as (
  select
    child_id,
    child_name,
    behavior_date,
    avg(score) OVER (
      partition by child_id order by behavior_date
      rows between 6 preceding and current row
    ) as avg_rolling_7_days
  from behavior_logs
)
select *
from rolling
where extract(day FROM behavior_date) % 7 = 0 --for a whole week, i.e. 01-07, 08-14, 15-22...
and avg_rolling_7_days < 0
order by behavior_date, child_name
