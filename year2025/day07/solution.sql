select count(distinct flake_type)
from snowfall_log
where fall_time >= '2025-12-24' and fall_time < '2025-12-25'
