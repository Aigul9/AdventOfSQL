select lower(trim(raw_wish)), count(1)
from advent.public.wish_list
group by 1
order by 2 desc
