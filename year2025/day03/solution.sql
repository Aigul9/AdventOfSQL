with ranked as (
  select prank_id, target_name, row_number() over(partition by target_name order by evilness_score desc, created_at desc) as rn
  from grinch_prank_ideas
)
select prank_id, target_name
from ranked
where rn = 1
