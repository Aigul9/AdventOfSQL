with tags as (
    select
        toy_id,
        toy_name,
        array(select unnest(new_tags) except select unnest(previous_tags)) as added_tags,
        array(select unnest(previous_tags) intersect select unnest(new_tags)) AS unchanged_tags,
        array(select unnest(previous_tags) except select unnest(new_tags)) as removed_tags
    from public.toy_production
)
select
    toy_id,
    coalesce(array_length(added_tags, 1), 0) as added_tags_count,
    coalesce(array_length(unchanged_tags, 1), 0) as unchanged_tags_count,
    coalesce(array_length(removed_tags, 1), 0) as removed_tags_count
from tags
order by 2 desc
limit 1;
