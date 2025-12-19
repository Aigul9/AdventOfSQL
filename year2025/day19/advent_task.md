## Advent of SQL Day 10: Bad deliveries 🛷

By December 19th, Santa’s delivery system was running at full tilt.

Routes were being finalized. Sleigh paths recalculated by the minute. Chimneys mapped down to the brick. Millions of presents were queued up, sorted, and scheduled for launch—ready for the biggest night of the year.

That’s when someone noticed something strange.

A small but growing number of presents weren’t scheduled for delivery to real places at all.

A lighthouse in the middle of the desert

An unregistered igloo drifting across the Arctic Sea

One delivery destination simply labeled “The Vibes”

And, inexplicably, a drop point marked “Volcano Rim”

The system hadn’t delivered these presents yet, but it was about to. And once the sleigh was airborne, it would be too late to stop them.

Santa frowned at the planning console.

“These presents can’t go out,” he said. “If they stay in the delivery queue, they’ll get loaded like everything else.”

The workshop had a solution for situations like this: the Misdelivered Presents Vault. It’s a secure holding area where problematic deliveries are removed from the active plan, logged, and reviewed before being reassigned to a proper route.

Santa turned to you.

“I don’t want this done in five steps,” he said. “And I don’t want any re-selecting. Move the problem presents out of the delivery system, log them in the vault, and show me exactly what you moved.”

The sleigh launch clock is ticking.

Time to work some SQL magic.

## Challenge

Clean-up the deliveries table to remove any records where the delivery_location is 'Volcano Rim', 'Drifting Igloo', 'Abandoned Lighthouse', 'The Vibes'.

Move those records to the misdelivered_presents with all the same columns as deliveries plus a flagged_at column with the current time and a reason column with "Invalid delivery location" listed as the reason for each moved record.

Make sure your final step shows the misdelivered_presents records that you just moved (i.e. don't include any existing records from the misdelivered_presents table).
