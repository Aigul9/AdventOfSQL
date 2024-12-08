with recursive managers as (
  	select staff_id, staff_name, manager_id
  	from staff
  	union all
  	select s.staff_id, s.staff_name, s.manager_id
  	from staff s
  		join managers m
  			on s.manager_id = m.staff_id
)
select staff_id, count(*)
from managers
group by staff_id
order by 2 desc
limit 1;