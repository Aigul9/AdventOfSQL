with wish_list_expanded as (
	select
		child_id
		, wishes ->> 'first_choice' as primary_wish
		, wishes ->> 'second_choice' as backup_wish
		, wishes -> 'colors' ->> 0 as favorite_color
		, json_array_length(wishes -> 'colors') as color_count
	from wish_lists
)
select
	c.name
	, w.primary_wish
	, w.backup_wish
	, w.favorite_color
	, w.color_count
		, case t.difficulty_to_make
		when 1 then 'Simple Gift'
		when 2 then 'Moderate Gift'
		else 'Complex Gift'
	end as gift_complexity
	, case t.category
		when 'outdoor' then 'Outside Workshop'
		when 'educational' then 'Learning Workshop'
		else 'General Workshop'
	end as workshop_assignment
from children c
	join wish_list_expanded w
		on c.child_id = w.child_id
	join toy_catalogue t
		on w.primary_wish = t.toy_name
order by c.name
limit 5;