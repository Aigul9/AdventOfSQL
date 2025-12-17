with ranked as (
  select
    product_id,
    price as product_price,
    lead(price) over w as previous_price,
    row_number() over w as rn
  from price_changes
  window w as (
    partition by product_id order by effective_timestamp desc
  )
)
select
  product_name,
  product_price,
  previous_price,
  product_price - previous_price as diff
from ranked r
  join products p
    on r.product_id = p.product_id
where rn = 1
order by 1
