with available_cocoa_cars as (
  select *
  from cocoa_cars
  order by total_stock desc
  limit 3
)
select passenger_name, array_agg(c.car_id order by c.car_id)
from passengers p
  left join available_cocoa_cars c
    on p.favorite_mixins && c.available_mixins
group by passenger_name
order by passenger_name
