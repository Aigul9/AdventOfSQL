## Santa's Cartesian Elf Skill-Matching Program

Santa's workshop is implementing a new mentoring program! He noticed that some elves excel at certain tasks but could benefit from working with others who share the same skills. To make the workshop more efficient, Santa needs to pair up elves who have the same skills so they can collaborate and learn from each other. However, he wants to make sure each pair is only listed once (no duplicates where Elf1/Elf2 are reversed) and that elves aren't paired with themselves.

## The challenge 🎁

Download challenge data

Create a query that returns pairs of elves who share the same primary_skill. The pairs should be comprised of the elf with the most and least years of experience in the primary_skill.

Your query should return:

- The ID of the first elf in the pair
- The ID of the second elf in the pair
- Their shared skill

Notes:

- Each pair should be returned only once.
- Elves can not be paired with themselves, a primary_skill will always have more than 1 elf.
- Order by primary_skill, there should only be one row per primary_skill.
- In case of duplicates order first by elf_1_id, then elf_2_id.