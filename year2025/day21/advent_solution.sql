with vectored as (
  select
    *,
    setweight(to_tsvector('english', title), 'A') || setweight(to_tsvector('english', description), 'B') as search_vector
  from archive_records
)
select *, ts_rank(search_vector, to_tsquery('english', 'fly:*')) AS rank
from vectored
where search_vector @@ to_tsquery('english', 'fly:*')
order by 5 desc
limit 5
