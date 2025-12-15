select *, mischief_score - lag(mischief_score) over(order by log_date) as diff
from grinch_mischief_log
order by log_date
