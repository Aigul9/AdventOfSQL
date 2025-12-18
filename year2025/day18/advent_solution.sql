with last_orders as (
  select
    *,
    row_number() over(partition by customer_id order by created_at desc) as rn
  from orders
)
select
  customer_id,
  created_at,
  trim(both '"' from order_data['shipping']['method']::text) as shipping_method,
  order_data['gift']['wrapped']::boolean as gift_wrapped,
  trim(both '"' from order_data['risk']['flag']::text) as risk_flag
from last_orders
where rn = 1
order by 1
