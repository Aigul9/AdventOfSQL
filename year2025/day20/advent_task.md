## Advent of SQL Day 11: Behavior Patterns

By December 20th, Santa wasn’t just checking lists anymore — he was watching trends.

A single bad day didn’t worry him. Kids have off days. Missed chores. Forgotten thank yous. That’s normal.

What worried Santa were patterns.

The North Pole had begun tracking daily behavior scores for each child throughout December. Positive numbers reflected kind actions and good choices. Negative numbers reflected… well, let’s just say room for improvement.

Santa leaned back in his chair, scrolling through pages of data.

“I don’t need to know who had one rough day,” he said. “I need to know whose behavior is trending in the wrong direction.”

To do that, Santa wanted to look at momentum, not snapshots.

Specifically, he asked for a report that would flag any child whose 7-day rolling average behavior score dropped below zero at any point in December.

If the average over a full week went negative, that was a sign worth investigating.

The data was there.

Now it was time to read between the rows.

## Challenge

Calculate the 7-day rolling average behavior score for each child. Identify any child whose rolling average drops below 0. For those children with a rolling average below 0, return the child_id, child_name, behavior_date (this will be the latest date in the 7-day rolling average), and the calculated 7-day rolling average. Only include results with a behavior_date of December 7, 2025 or later, ensuring that each rolling average is based on a full 7 days of data.

Order the results by behavior_date and then child_name.
