select log_date, sum(stories_shared) over(order by log_date)
from story_log
order by 1
