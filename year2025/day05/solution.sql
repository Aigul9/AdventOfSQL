select elf_name, coalesce(max(return_date), 'Still resting')
from elves
  left join vacations
    on elves.elf_id = vacations.elf_id
group by elves.elf_id
