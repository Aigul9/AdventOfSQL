select
    field_name,
    harvest_year,
    season,
    round(avg(trees_harvested) over(
        partition by field_name
        order by
            case season
                when 'Spring' then 1
                when 'Summer' then 2
                when 'Fall' then 3
                when 'Winter' then 4
            end
        rows between 2 preceding and current row
    ), 2) as three_season_moving_avg
from TreeHarvests
order by 4 desc