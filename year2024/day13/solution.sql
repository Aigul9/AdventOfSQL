with unnested as (
    select
        *,
        unnest(email_addresses) as email
    from contact_list
)
select
    split_part(email, '@', 2) as Domain,
    count(1) as Total_Users,
    array_agg(email) as Users
from unnested
group by split_part(email, '@', 2)
order by 2 desc;
