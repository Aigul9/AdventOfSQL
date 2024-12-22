with recursive managers as (
  	select staff_id, staff_name, manager_id
  	from staff
  	union all
  	select s.staff_id, s.staff_name, s.manager_id
  	from staff s
  		join managers m
  			on s.manager_id = m.staff_id
),
levels as (
    select
        staff_id,
        staff_name,
        manager_id,
        count(1) as level,
        count(1) over(PARTITION by manager_id) as peers_same_manager,
        count(1) over(PARTITION by count(1)) as total_peers_same_level
    from managers
    group by staff_id, staff_name, manager_id
)
select
    staff_id,
    staff_name,
    level,
    manager_id,
    peers_same_manager,
    total_peers_same_level
from levels
order by total_peers_same_level desc, staff_id
limit 10;