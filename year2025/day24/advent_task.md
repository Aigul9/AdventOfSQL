## Advent of SQL Day 15: The final challenge

On Christmas Eve, an eerie calm settled over the North Pole.

The sleigh was ready. The reindeer were fed. The routes were locked in.

All that remained was one final step: verifying the system dispatch ledger — the master record that tracks every subsystem signal required for Santa’s launch.

Each dispatch carried a small marker embedded inside its payload. When read in the correct order, those markers formed a final confirmation phrase used by the sleigh’s guidance system.

Normally, this was routine.

Incoming dispatches would land in the incoming_dispatches table. Periodically, an automated job would copy them into the master table, system_dispatches, and then clear the incoming queue.

But earlier today, the North Pole network hiccupped.

Some incoming records were copied over. Others weren’t.

Now, minutes before launch, the elves need to reconstruct the confirmation phrase fast.

They remember this happened once before, but the exact steps are fuzzy:

“When we moved the incoming records into the system table, some columns just… appeared. It was magical.”
“The system kept throwing errors until we figured out how to handle duplicates. Whatever you do the records already in system_dispatches must take precedence.”
“To get the phrase, we had to find the most recent dispatch per system but only from the primary source.”
“Once we had the phrase, Santa entered it into the sleigh… and liftoff was perfect.”

## Challenge

Reconstruct the final confirmation phrase to text Santa based on the elves’ hazy recollection of how they solved this problem before.

Your final result should include the marker_letter for each system, using only the most recent dispatch from a primary source. Once the correct dispatch has been identified for every system, combine the results and order them by dispatched_at in ascending order to reveal the confirmation phrase.

The sleigh won’t launch without it.
