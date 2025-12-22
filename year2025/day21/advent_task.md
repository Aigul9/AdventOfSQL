## Advent of SQL Day 12: The flying archives

As Christmas neared, the North Pole Archives were busier than ever.

For centuries, elves had documented everything: prototype toy designs, workshop experiments, sleigh upgrades, and ideas that were quietly labeled “do not attempt again.” Each archive record had a title that was short and tidy and additional details lived in longer, free-form descriptions.

This year, something kept coming up in conversations across the workshop:

“That old flying prototype…” “The notes about flight stabilization…” “Didn’t we already try making toys fly on their own?”

The Archivist sighed.

The elves replied “We don’t remember exact titles. We remember fragments. We need you to search both titles and descriptions, but archived records where "fly" appears in the title should matter more. And if someone types fly, it should also match flying.”

You’re handed access to the archive database.

Time to search like an expert Archivist!

## Challenge

Using the archive_records table, search both the title and description fields for the term "fly". Make sure that you also match for words like "flying", "flight", etc. Boost the results where the term appears in the title and lastly, rank the results by relevance (most relevant first). Provide the elves the top 5 most relevant archived records back.
