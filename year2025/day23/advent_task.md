## Advent of SQL Day 14: Mountain Network

A group of friends headed up to Sundance Ski Resort for a long-awaited winter getaway. As with any group trip, opinions quickly diverged once skis were on and boots were buckled. Some friends wanted a fast, efficient run straight to lunch. Others wanted to soak it all in—longer routes, more turns, and a scenic cruise down the mountain.

There was just one problem.

The trail maps at Sundance had seen better days. Between faded ink, overlapping lines, and confusing lift connections, it wasn’t easy to tell how to get from one part of the mountain to another—especially when lifts and trails connected in non-obvious ways.

Luckily, one of the resort employees stepped in. Since many staff were on vacation that week, they printed out a simplified network table showing how each part of the mountain connected to the next. Each row represented a single step in the mountain network: from one lift to another lift, or from a lift to a trail, or from one trail to the next. For trails, the table also recorded the difficulty level.

The plan was simple:

Start at Jake’s Lift

End at the bottom of Maverick Trail

Ski exactly one run before meeting up for lunch and a drink

But the group wanted options.

Some friends wanted the shortest possible route. Others wanted to explore every reasonable path down the mountain. Rather than arguing at the top of the lift, they asked you to solve it properly. Luckily you brought your laptop, so you ran back to the car quick.

Your task: Using the mountain network data, find all possible routes from Jake’s Lift to Maverick, no matter how long or winding, so the group can split up based on how much skiing they want to do.

The mountain is connected. The paths are many. Time to let recursion do the navigating.

## Challenge

Find all the possible routes from Jake's Lift to Maverick. None of the possible routes will take more than 12 connections.
