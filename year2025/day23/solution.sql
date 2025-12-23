select builder_id, builder_name, count(distinct candy_type)
from gingerbread_designs
group by 1, 2
having count(distinct candy_type) >= 4
