with elems as (
    select *, jsonb_array_elements(cleaning_receipts) as elem
  	from SantaRecords
)
select
	elem ->> 'drop_off' as record_date,
    elem
from elems
where elem ->> 'garment' = 'suit'
and elem ->> 'color' = 'green'
order by 1 desc