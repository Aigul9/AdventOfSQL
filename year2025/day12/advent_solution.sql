with filtered as (
  select
    id,
    case
      when status is null and transcript ilike '%sorry%' then 'approved'
      else status
    end as updated_status
  from hotline_messages
  where (tag not in (
    'penguin prank',
    'time-loop advisory',
    'possible dragon',
    'nonsense alert'
  ) or tag is null) and caller_name != 'Test Caller'
)
select
  count(case when updated_status = 'approved' then id end) as approved_cnt,
  count(case when updated_status is null then id end) as to_be_reviewed_cnt
from filtered
