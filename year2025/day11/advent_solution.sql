select
  official_category,
  sum(quantity)
from snowball_inventory si
  join snowball_categories sc
    on si.category_name = sc.official_category
    and quantity > 0
group by 1
order by 2
