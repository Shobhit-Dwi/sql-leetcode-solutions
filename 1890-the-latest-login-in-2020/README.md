# 1890. The Latest Login in 2020

🔗 [LeetCode Problem](https://leetcode.com/problems/the-latest-login-in-2020/)

## 🧠 Problem Summary

Given a `Logins` table with columns `user_id` and `time_stamp`, return the latest login time **in the year 2020** for each user.

## ✅ Approach (Filtering by Year + GROUP BY with MAX)

This solution filters logins by year and then finds the latest login time for each user.

### Explanation:

- Use `WHERE TO_CHAR(time_stamp, 'YYYY') = '2020'` to filter logins only from 2020.
- Use `GROUP BY user_id` to group the records by user.
- Use `MAX(time_stamp)` to find the most recent login for each user in that year.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
