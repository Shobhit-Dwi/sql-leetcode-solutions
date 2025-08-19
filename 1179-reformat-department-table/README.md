# 1179. Reformat Department Table

🔗 [LeetCode Problem](https://leetcode.com/problems/reformat-department-table/)

## 🧠 Problem Summary

You are given a table `Department` with columns `id`, `month`, and `revenue`. Your task is to transform the table so that each `id` becomes a row, and each month becomes a separate column showing its total revenue.

## ✅ Approach (Pivot Using CASE WHEN with GROUP BY)

This solution uses `CASE WHEN` statements inside `SUM()` to pivot month values into separate columns and group the data by `id`.

### Explanation:

- Use `SUM(CASE WHEN month = 'X' THEN revenue END)` for each month to create new monthly columns.
- Use `GROUP BY id` to aggregate rows per department.
- Use `ORDER BY id` to return results in ascending order by department ID.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
