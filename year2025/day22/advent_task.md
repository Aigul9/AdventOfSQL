## Advent of SQL Day 13: XML manifest

On December 22nd, North Pole Transit was operating at full capacity.

Sleighs were departing every hour. Cargo trains ran nonstop across frozen routes. Overnight supply flights lifted off in carefully timed windows. To keep everything moving, each departure generated a travel manifest — a detailed record of who or what was on board.

The problem? The manifest system was old. Very old.

Instead of neatly structured tables, each manifest stored its passenger list inside a single XML document. Names, ticket classes, and other details were all nested deep inside the file, mixed in with extra notes about weather conditions, engine checks, and reindeer morale. The data was technically complete — just not very usable.

That morning, the transit director walked into the operations room holding a clipboard.

“I need to know if any of the Cargo vehicles are overbooked with more than 20 passengers at any given departure time” she said.

The clock was ticking. Departures were lining up. And all the answers were there… buried inside XML.

## Challenge

Using the travel_manifests table, extract the passenger information from the XML data and produce a report that shows all of the departure times for "CARGO" vehicles that have more than 20 passengers booked. Include in the results:

- The vehicle_id
- The departure_time
- The total number of passengers on that departure
- Order the results by departure_time.
