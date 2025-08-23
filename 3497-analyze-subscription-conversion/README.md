# 3497. Analyze Subscription Conversion

🔗 [LeetCode Problem](https://leetcode.com/problems/analyze-subscription-conversion/)

## 🧠 Problem Summary

Given a `UserActivity` table with columns `user_id`, `activity_type` (`'free_trial'` or `'paid'`), and `activity_duration`, return for each user:
- Their average free trial activity duration (rounded to 2 decimal places)
- Their average paid activity duration (rounded to 2 decimal places)
Only include users who have both types of activity.

## ✅ Approach (Aggregate in Subqueries + INNER JOIN)

This solution calculates average durations for each activity type in subqueries and joins them by `user_id`.

### Explanation:

- Create a subquery to calculate `trial_avg_duration` for each user where `activity_type = 'free_trial'`.
- Create another subquery to calculate `paid_avg_duration` where `activity_type = 'paid'`.
- Use `INNER JOIN` to include only users who have both types of activity records.
- Use `ROUND(..., 2)` to round averages to two decimal places.
- Final result is ordered by `user_id`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
