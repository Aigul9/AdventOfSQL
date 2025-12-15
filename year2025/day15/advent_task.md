## Summary

By December 14th, the customer support floor at BrightBox, a fast-growing holiday-season subscription box company, was buzzing louder than the label printers. Each December, BrightBox offered a special promotion: "25 Days of Delight" — one small surprise delivered to participating households every day from December 1st through December 25th.

But this year, the fulfillment team noticed something troubling.

Casey, one of the seasonal data analysts, squinted at their dashboard. The families table was clean. The deliveries_assigned table showed what had already been planned. But a quick manual check of a few families upcoming deliveries revealed that many households were missing future deliveries.

The original system had no way to see all 25 Days of deliveries for families. It only recorded the dates for deliveries that were scheduled. Not the dates that were missing.

Casey took a deep breath.

"All right," they muttered, pulling up a fresh SQL worksheet. "If nobody gave us a calendar, we'll build our own. All twenty-five days. Then we'll find every missing future package before customers start calling."

And with that, Casey started typing.

## Challenge

Generate a report that returns the dates and families that have no delivery assigned after December 14th, using the families and deliveries_assigned.

Each row in the report should be a date and family name that represents the dates in which families don't have a delivery assigned yet.

Label the columns as unassigned_date and name. Order the results by unassigned_date and name, respectively, both in ascending order.
