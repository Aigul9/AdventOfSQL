with prev_time as (
    select
        place_name,
	lead(timestamp) over(order by timestamp) - timestamp as interval
    from areas
        join sleigh_locations
            on ST_Intersects(coordinate, polygon)
)
select
    place_name,
    sum(interval) as total_hours_spent
from prev_time
group by place_name
order by 2 desc nulls last;
