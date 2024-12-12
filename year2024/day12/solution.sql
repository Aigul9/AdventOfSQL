with perc as (
    select
        g.gift_name,
        cast(percent_rank() over(order by count(gr.gift_id)) as numeric(3, 2)) as overall_rank
    from gift_requests gr
        join gifts g
            on gr.gift_id = g.gift_id
    group by g.gift_name
),
ranked as (
    select
        gift_name,
        overall_rank
        dense_rank() over(order by overall_rank desc) as rnk
    from perc
)
select
    min(gift_name) as gift_name,
    overall_rank
from ranked
where rnk = 2
group by overall_rank