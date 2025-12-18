## Advent of SQL Day 2: The great snowball meltdown

On the frosty morning of December 11th, the Snowball Quality Lab erupted into chaos. Snowpea, the North Pole’s Chief Snowball Engineer, burst into Santa’s workshop with a dripping cup of slush held at arm’s length. “Disaster!” she wailed. “The cooling chambers glitched again!”

Behind her, a solemn line of elves entered carrying identical cups—each labeled in Snowpea’s careful handwriting: “NOT FOR THROWING.” Once-premium snowballs had melted overnight into sad little puddles.

Santa hurried to the snowball storage board, but the situation only got stranger. Whole batches appeared twice. Some batches claimed they had negative snowballs (“a bookkeeping accident,” the elves muttered). Others had a quantity of zero but were still marked “Ready.” And many batches referenced categories that didn’t appear anywhere in the official Snowball Category Guide.

“We need to know what we actually have left,” Santa said. “Not puddles. Not phantom batches. Real, usable, throw-ready snowballs.”

Snowpea slammed her frost-covered clipboard onto the table. “Every production line logs its batches separately. Some lines double-log accidents, and others forget to log a batch entirely. We can’t trust any of it. We need someone who can make sense of all these numbers.”

All eyes turned to you—North Pole’s unofficial analytics wizard.

## Challenge

Using the snowball_inventory and snowball_categories tables, write a query that returns valid snowball categories with the count of valid snowballs per category. Your final table should have the columns official_category and total_usable_snowballs. Sort the output from fewest to most total_usable_snowballs.
