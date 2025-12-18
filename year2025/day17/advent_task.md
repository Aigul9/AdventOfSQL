## Advent of SQL Day 8: Pricing snapshot 📈

As the holiday shopping season ramps up, retailers quietly adjust prices across their product catalog. Some items are discounted to boost sales, while others increase as inventory tightens and demand spikes.

The pricing team records every price change in a history table. Each entry captures the moment a new price became effective, allowing analysts to trace how prices evolved throughout December.

Now that December 16th has passed, leadership wants one final snapshot before the last-minute rush:

"For each product, show me the current price compared to the price right before it."

## Challenge

Generate a report, using the products and price_changes tables for leadership that returns the product_name, current_price, previous_price, and the difference between the current and previous prices.
