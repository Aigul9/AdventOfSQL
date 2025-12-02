select tp.toy_id, tp.toy_name
from toy_production tp
  join toy_delivery td
    on tp.toy_id = td.toy_id
