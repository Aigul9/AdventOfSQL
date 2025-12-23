with recursive path_finder as (
    --base
    select
        from_node,
        to_node,
        array[from_node, to_node] as full_path,
        array[coalesce(difficulty, '-')] as difficulty,
        2 as count
    from mountain_network
    where from_node = 'Jake''s Lift'

    union all

    --recursive
    select
        r.from_node,
        r.to_node,
        pf.full_path || r.to_node,
        pf.difficulty || coalesce(r.difficulty, '-'),
        pf.count + 1
    from mountain_network r
    join path_finder pf on pf.to_node = r.from_node
    --no loops
    where not r.to_node = any(pf.full_path)
)
select *
from path_finder
where to_node = 'Maverick';
