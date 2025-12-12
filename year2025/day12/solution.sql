with ranked as (
  select
    sent_at::date as sent_dt,
    sender_id,
    count(message_id) as message_cnt,
    rank() over(partition by sent_at::date order by count(message_id) desc) as rnk
  from npn_messages
  group by 1, 2
)
select sent_dt, user_name, message_cnt
from ranked
  join npn_users
    on ranked.sender_id = npn_users.user_id
where rnk = 1
