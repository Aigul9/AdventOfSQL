select log_id, cocoa_name, location_name
from cocoa_logs cl
  join break_schedule bs
    on cl.break_id = bs.break_id
  join cocoa_types ct
    on cl.cocoa_id = ct.cocoa_id
  join locations l
    on bs.location_id = l.location_id
