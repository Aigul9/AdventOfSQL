## The greatest Christmas dinner ever! 🍗

Mrs. Claus has a delightful but daunting task ahead of her. Every year, she hosts a magnificent Christmas dinner for all the elves, reindeer handlers, and special holiday helpers at the North Pole. This year, she's expecting more guests than ever - over 78 helpers in total! So she's only interested in past events where there were more than 78 guests. She keeps meticulous records of all previous Christmas dinners in her magical database, stored as XML data that captures everyone's preferences and reactions to different dishes. She needs your help to understand which dishes are the most popular.

## The challenge 🎁

Download challenge data

The challenge is that some records are stored in different XML schemas. Mrs. Claus needs help writing a SQL query that can search through all schema versions to find the most beloved dishes from the busiest celebrations. As she's having more than 78 guests this year, she wants to make sure the dishes are popular with a large crowd, so only use years where she had more than 78 guests.

You will have to do some prep-work before you write your final query, like understanding how many unique schema versions exist and how to parse each schema using SQL.

Help Mrs. Claus write a SQL query that can:

1. Parse through all different schema versions of menu records
2. Find menu entries where the guest count was above 78
3. Extract the food_item_ids from those successful big dinners
4. From this enormous list of items, determine which dish (by food_item_id) appears most frequently across all of the dinners.

Input the food_item_id of the food item that appears the most often.


You answered correctly 🎉