select distinct subject, first_value(score) over w, last_value(score) over w
from daily_quiz_scores
window w as (
  partition by subject
  order by quiz_date
  rows between unbounded preceding AND unbounded following
)
order by 1
