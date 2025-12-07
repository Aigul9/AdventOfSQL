with agg as (
  select resort_name, sum(snowfall_inches) as total_snowfall_inches
  from resort_monthly_snowfall
  group by resort_name
)
select *, ntile(4) over (order by total_snowfall_inches)
from agg
