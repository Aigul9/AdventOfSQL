## Summary

By the end of the second week of December, the Ho-Ho Hotline was ringing around the clock.

Kids could call from anywhere in the world, leave a message for Santa, and a squad of transcription elves would type up what they heard so the rest of the North Pole could read it later. Normally the messages were sweet—lists of wishes, shy thank-yous, the occasional very serious five-year-old explaining why their sibling should be on the Naughty List “for research purposes.”

This year, though, someone had installed an “experimental upgrade.”

The new system was supposed to automatically tag each message with a quick label—things like “wish list,” “thank you,” or “needs clarification.” Instead, it had started assigning tags like “time-loop advisory,” “possible dragon", and “definitely a penguin prank.” Some messages were clearly spam from bored penguins at the South Pole. Others were genuine kid apologies or heartfelt wishes, but they had no tag or status at all. Worst of all, a few of the weirder calls had been quietly tucked into an unlabeled limbo, where no elf would see them unless someone dug deep enough.

Santa stared at the console for the Ho-Ho Hotline Messages queue. Thousands of messages blinked past. Some had already been reviewed and marked as “approved” or “spam.” Many still had no status at all. Santa needed the queue cleaned up, without having to re-review every single message ever received.

He called you in. “We need to add approve the untagged apologies and clear out obvious prank messages,” he said, tapping the screen. “But you must be very careful. If you forget to limit the changes to the unreviewed messages, you might rewrite the status on every message in the system. And I really don’t want to explain that to the Complaints Department.”

## Challenge

Using the hotline_messages table, update any record that has "sorry" (case insensitive) in the transcript and doesn't currently have a status assigned to have a status of "approved".

Then delete any records where the tag is "penguin prank", "time-loop advisory", "possible dragon", or "nonsense alert" or if the caller's name is "Test Caller".

After updating and deleting the records as described, write a final query that returns how many messages currently have a status of "approved" and how many still need to be reviewed (i.e., status is NULL).
