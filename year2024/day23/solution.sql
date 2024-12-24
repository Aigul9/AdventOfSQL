with diffs as (
    select
        *,
        id - lag(id) over(order by id) as diff_prev,
        lead(id) over(order by id) - id as diff_next
    from sequence_table
),
lags as (
    select *, row_number() over(order by id) as rn
    from diffs
    where diff_next > 1
),
leads as (
    select *, row_number() over(order by id) as rn
    from diffs
    where diff_prev > 1
)
select
    lags.id + 1 as gap_start,
    leads.id - 1 as gap_end,
    array(select generate_series(lags.id + 1, leads.id - 1))
from lags
    join leads
        on lags.rn = leads.rn;