with moved_rows as (
  delete from deliveries
  where delivery_location in (
    'Volcano Rim', 'Drifting Igloo', 'Abandoned Lighthouse', 'The Vibes'
  )
  returning *
)
insert into misdelivered_presents
select
  *,
  date_trunc('second', LOCALTIMESTAMP) as flagged_at,
  'Invalid delivery location' as reason
from moved_rows
returning *
