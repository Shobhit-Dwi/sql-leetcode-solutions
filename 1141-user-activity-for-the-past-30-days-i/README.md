# 1141. User Activity for the Past 30 Days I

🔗 [LeetCode Problem](https://leetcode.com/problems/user-activity-for-the-past-30-days-i/)

## 🧠 Problem Summary

Given a table `Activity` with columns `user_id` and `activity_date`, return the number of unique users who were active on each day within the date range from `2019-06-28` to `2019-07-27`.

## ✅ Approach (COUNT DISTINCT with Date Filtering and GROUP BY)

This solution filters the `Activity` table for the specified date range, groups the data by each activity date, and counts the distinct number of users per day.

### Explanation:

- Use `WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'` to filter the date range.
- Use `GROUP BY activity_date` to aggregate data for each day.
- Use `COUNT(DISTINCT user_id)` to count unique active users per day.
- Format the date as `'YYYY-MM-DD'` using `TO_CHAR` for consistent date output.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
