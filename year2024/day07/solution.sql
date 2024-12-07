with ranked as (
  	select
  		*,
  		rank() over(partition by primary_skill order by years_experience desc) as first_rnk,
  		rank() over(partition by primary_skill order by years_experience) as last_rnk
  	from workshop_elves
),
first_elves as (
	select *
    from ranked
    where first_rnk = 1
),
last_elves as (
	select *
    from ranked
    where last_rnk = 1
),
joined as (
  select
      f.elf_id as elf_1_id,
      l.elf_id as elf_2_id,
      f.primary_skill as shared_skill,
  	  ROW_NUMBER() over(partition by f.primary_skill order by f.elf_id, l.elf_id) as rn
  from first_elves f
     join last_elves l
         on f.primary_skill = l.primary_skill
 )
select *
from joined
where rn = 1
order by shared_skill