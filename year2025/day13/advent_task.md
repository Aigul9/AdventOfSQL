## Summary

Every December, the mountain town of Pinebrook transforms into a snow-globe scene for WinterFest, a beloved celebration filled with ice sculptures, choir performances, sleigh rides, and enough hot cocoa to keep the whole valley buzzing. The event is powered almost entirely by volunteers, who sign up ahead of time for one of three daily timeslots: 10:00 AM, 12:00 PM, or 2:00 PM.

The core volunteer roles include:

Stage Setup
Cocoa Station
Parking Support
Choir Assistant
Normally the system runs like a well-oiled snow machine. But this year… things got complicated.

A severe blizzard hit the region the day before WinterFest, forcing dozens of volunteers to cancel their shifts. New helpers poured in, eager to pitch in, but with the emergency preparations underway, Jordan, apprentice to the long-time coordinator John, was asked to record all the last-minute signups.

The problem? Jordan didn’t know how to use Pinebrook’s ancient but reliable volunteer tracking system. After staring at the interface for ten minutes and declaring it “haunted,” he instead opened a spreadsheet and typed everything by hand.

When the mayor stopped by to check the final volunteer roster, John confidently began printing the report from the official system. At the same time, Jordan proudly handed the mayor a sheet of paper with his spreadsheet printed out.

That’s when the disaster became obvious.

Jordan's spreadsheet used:

Different task labels (e.g., “stage setup”, “choir”, “cocoa station”, “parking_support”)
Inconsistent time formats (“10AM”, “10 am”, “noon”, “2 PM”)
Two brand-new roles he invented on the spot due to the storm: snow shoveling and handwarmer handout
Meanwhile, John’s official system stored:

Job titles in standardized machine-friendly form (stage_setup, cocoa_station, etc.)
Timeslots in strict "HH:MM AM/PM" format
Extra columns Jordan never included, such as age_group and an unused code field
Now WinterFest needs one clean, deduplicated volunteer list, but with standardized role labels and consistent timeslot formatting.

John turned to you. “You’re the only person who can clean this up in time,” he said, handing over both datasets, official_shifts and last_minute_signups.

WinterFest opens tomorrow. The bonfires are stacked, the choir is warming up, and people are already anxiously buzzing about Main Street.

All Pinebrook needs now is a clean volunteer list. And that’s your job.

## Challenge

Using the official_shifts and last_minute_signups tables, create a combined de-duplicated volunteer list.

Ensure the list has standardized role labels of Stage Setup, Cocoa Station, Parking Support, Choir Assistant, Snow Shoveling, Handwarmer Handout.

Make sure that the timeslot formats follow John's official shifts format.
