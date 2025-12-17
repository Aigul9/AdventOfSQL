select
  *,
  case
    when noise_level < 50 then 'Calm'
    else 'Chaotic'
  end
from evening_tasks
