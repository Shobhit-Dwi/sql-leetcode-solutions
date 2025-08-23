# 1965. Employees With Missing Information

🔗 [LeetCode Problem](https://leetcode.com/problems/employees-with-missing-information/)

## 🧠 Problem Summary

Given two tables, `Employees` and `Salaries`, each containing `employee_id`, find all employee IDs that appear in only one of the two tables (i.e., employees with missing information in either table).

## ✅ Approach (UNION and MINUS)

This solution identifies employee IDs present in either table but not in both by:

- Using `UNION` to get all distinct employee IDs from both `Employees` and `Salaries`.
- Using `MINUS` to remove employee IDs that appear in the join of both tables (`Employees INNER JOIN Salaries`), which are the ones present in both.
- The result is employee IDs missing in either table.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
