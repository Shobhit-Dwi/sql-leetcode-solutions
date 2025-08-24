# 1729. Find Followers Count

🔗 [LeetCode Problem](https://leetcode.com/problems/find-followers-count/)

## 🧠 Problem Summary

Given a `Followers` table with columns `user_id` and `follower_id`, return each `user_id` along with the number of followers they have, sorted in ascending order by `user_id`.

## ✅ Approach (COUNT + GROUP BY + ORDER BY)

This solution counts the number of followers per user.

### Explanation:

- Use `GROUP BY user_id` to group follower data by each user.
- Use `COUNT(follower_id)` to count how many followers each user has.
- Use `ORDER BY user_id ASC` to sort the results by `user_id` in ascending order.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
