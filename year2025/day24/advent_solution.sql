with unioned as (
  select system_id, dispatched_at, payload, payload ->> 'marker' as marker_letter, payload ->> 'source' as source, 2 as ordering
  from incoming_dispatches
  union all
  select system_id, dispatched_at, payload, marker_letter, payload ->> 'source' as source, 1 as ordering
  from system_dispatches
),
ranked as (
  select *, row_number() over(partition by system_id order by dispatched_at desc, ordering) as rn
  from unioned
  where source = 'primary'
)
select *
from ranked
where rn = 1
order by system_id;
