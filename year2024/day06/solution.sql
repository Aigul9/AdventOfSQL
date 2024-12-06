select
    c.name as child_name,
    g.name as gift_name,
    g.price as gift_price
from children c
    join gifts g
        on c.child_id = g.child_id
where g.price > (
    select avg(price) from gifts
)
order by g.price;