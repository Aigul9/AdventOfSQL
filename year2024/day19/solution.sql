with scored as (
    select
        *,
        year_end_performance_scores[array_upper(year_end_performance_scores, 1)] as last_score
    from employees
),
averaged as (
    select avg(last_score) as avg_last_score
    from scored
)
select sum(
    case
        when last_score > avg_last_score then salary * 1.15
        else salary
    end
) as total_salary_with_bonuses
from scored
    cross join averaged;