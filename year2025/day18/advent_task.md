## Advent of SQL Day 9: the JSON mess

By December 18th, the holiday rush was in full swing at Evergreen Market, an online store handling thousands of last-minute orders every hour.

To move fast, the engineering team made a tradeoff earlier in the year: instead of fully normalizing every order detail, they stored most of the order metadata in a single JSON column. Shipping preferences, delivery notes, gift options, and even fraud flags were all tucked neatly inside.

It worked great… until it didn’t.

Customer support started getting complaints:

“My order was marked as gift wrapped but arrived plain.” “Why did my express delivery show up late?” “Why does my order say high risk?”

The support lead pulled you aside. “I need a report that pulls specific fields out of that JSON data. I also need to know which orders are most recent per customer, because I only care about the latest issue for each person.” You crack open the database. The data is all there — just buried. Time to dig.

## Challenge

Build a report using the orders table that shows the latest order for each customer, along with their requested shipping method, gift wrap choice (as true or false), and the risk flag in separate columns.

Order the report by the most recent order first so Evergreen Market can reach out to them ASAP.
