# 1211. Queries Quality and Percentage

🔗 [LeetCode Problem](https://leetcode.com/problems/queries-quality-and-percentage/)

## 🧠 Problem Summary

You are given a table `Queries` with `query_name`, `rating`, and `position`. Your task is to return, for each unique query name:

- Its average quality: calculated as `AVG(rating / position)`
- The percentage of poor queries (where rating < 3), rounded to two decimal places.

## ✅ Approach (Aggregation with AVG, CASE, and ROUND)

This solution computes two aggregate metrics per `query_name`:

### Explanation:

- Use `AVG(rating * 1.0 / position)` to calculate average query quality with float precision.
- Use `CASE WHEN rating < 3 THEN 1 ELSE 0 END` to count poor queries.
- Compute the percentage of poor queries as `(poor queries * 100.0) / total queries`.
- Wrap both calculations with `ROUND(..., 2)` to round to 2 decimal places.
- Group the results by `query_name`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
