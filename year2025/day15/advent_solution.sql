with calendar as (
  select
    d::date as day
  from generate_series(
    '2025-12-15'::date,
    '2025-12-25'::date,
    interval '1 day'
  ) as t(d)
)
select c.day as unassigned_date, family_name, f.id
from calendar c
  cross join families f
  left join deliveries_assigned d
    on f.id = d.family_id
    and c.day = d.gift_date
where d.gift_date is null
order by 1, 2
