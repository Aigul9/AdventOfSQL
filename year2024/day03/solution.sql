with extracted as (
    select
        menu_data,
        (xpath('//@version', menu_data))[1]::text as version
    from christmas_menus
),
parsed as (
    select
        menu_data,
        version,
        case version
            when '1.0' then (xpath('//total_count/text()', menu_data))[1]::text::integer
            when '2.0' then (xpath('//total_guests/text()', menu_data))[1]::text::integer
            when '3.0' then (xpath('//total_present/text()', menu_data))[1]::text::integer
        end as num_guests
    from extracted
),
dishes as (
    select unnest(xpath('//food_item_id/text()', menu_data))::text as food_item_id
    from parsed
    where num_guests > 78
)
select food_item_id, count(1) as frequency
from dishes
group by food_item_id
order by frequency desc
limit 1;