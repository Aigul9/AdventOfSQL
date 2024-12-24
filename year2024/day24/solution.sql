select
    song_title,
    count(1) as total_plays,
    count(case when duration is null or duration < song_duration then 1 end) as total_skips
from user_plays up
    join songs s
        on up.song_id = s.song_id
group by song_title
order by total_plays desc;