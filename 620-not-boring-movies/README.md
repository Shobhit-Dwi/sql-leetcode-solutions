# 620. Not Boring Movies

🔗 [LeetCode Problem](https://leetcode.com/problems/not-boring-movies/)

## 🧠 Problem Summary

Given a table `Cinema` with columns `id`, `movie`, `description`, and `rating`, return the details of movies that meet the following criteria:

- The movie's `id` is odd.
- The `description` is **not** `'boring'`.

Results should be ordered by `rating` in descending order.

## ✅ Approach (Filtering with MOD and WHERE Conditions)

This solution filters movies using:

- `MOD(id, 2) = 1` to select only rows with odd `id`.
- `description <> 'boring'` to exclude boring movies.

The filtered result is ordered by `rating` descending, to prioritize higher-rated movies.

📄 **See [`solution.sql`](./solution.sql) for the exact SQL code.**
