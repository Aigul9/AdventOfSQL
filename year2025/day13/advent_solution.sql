select volunteer_name, initcap(replace(role, '_', ' ')) as role, shift_time
from official_shifts
union
select all
  volunteer_name,
  case
    when assigned_task ilike '%stage%' then 'Stage Setup'
    when assigned_task ilike '%cocoa%' then 'Cocoa Station'
    when assigned_task ilike '%park%' then 'Parking Support'
    when assigned_task ilike '%choir%' then 'Choir Assistant'
    when assigned_task ~* 'snow|shovel' then 'Snow Shoveling'
    when assigned_task ilike '%handwarmer%' then 'Handwarmer Handout'
    else null
  end as role,
  case
    when time_slot = 'noon' or time_slot like '12%' then '12:00 PM'
    when time_slot like '10%' then '10:00 AM'
    when time_slot like '2%' then '2:00 PM'
  end as shift_time
from last_minute_signups
order by 1
