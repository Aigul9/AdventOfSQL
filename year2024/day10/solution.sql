create extension if not exists tablefunc;

select *
from crosstab(
    $$
        select date, drink_name, sum(quantity) as total_quantity
        from Drinks
        group by date, drink_name
        order by 1, 2
    $$,
    $$
        select distinct drink_name
        from Drinks
        where drink_name in ('Eggnog', 'Hot Cocoa', 'Peppermint Schnapps')
        order by 1
    $$
) AS ct(date date, eggnog int, hot_cocoa int, peppermint_schnapps int)
where eggnog = 198 and hot_cocoa = 38 and peppermint_schnapps = 298;