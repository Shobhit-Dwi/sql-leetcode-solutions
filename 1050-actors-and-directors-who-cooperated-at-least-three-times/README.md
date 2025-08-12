# 1050. Actors and Directors Who Cooperated At Least Three Times

🔗 [LeetCode Problem](https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/)

## 🧠 Problem Summary

Given a table `ActorDirector` with columns `actor_id` and `director_id`, return all pairs where the actor and director have collaborated **at least three times**.

## ✅ Approach (GROUP BY with HAVING)

This solution counts how many times each `actor_id` and `director_id` pair appears in the table.

### Explanation:

- Use `GROUP BY actor_id, director_id` to group the data by each unique actor-director pair.
- Use `HAVING COUNT(*) >= 3` to filter only those pairs who have worked together three or more times.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
