with toy_production_lag as (
  select
    production_date,
    toys_produced,
    lag(toys_produced) over(order by production_date) as previous_day_production
  from toy_production
)
select
  production_date,
  toys_produced,
  previous_day_production,
  toys_produced - previous_day_production as production_change,
  round((toys_produced - previous_day_production) * 100.00 / previous_day_production, 2) as production_change_percentage
from toy_production_lag
order by 5 desc nulls last;