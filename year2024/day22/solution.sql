select count(id)
from elves
where string_to_array(skills, ',') @> ARRAY['SQL'];