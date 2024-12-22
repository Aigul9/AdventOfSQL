with sales_by_quarters as (
    select
        extract(year from sale_date) as year,
        extract(quarter from sale_date) as quarter,
        sum(amount) as total_sales
    from sales
    group by 1, 2
)
select *,
    total_sales / lag(total_sales) over(order by year, quarter) - 1 as growth_rate
from sales_by_quarters
order by 4 desc nulls last;