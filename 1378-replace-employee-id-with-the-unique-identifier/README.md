# 1378. Replace Employee ID With The Unique Identifier

🔗 [LeetCode Problem](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/)

## 🧠 Problem Summary

Given two tables:
- `Employees` containing `id` and `name`
- `EmployeeUNI` containing `id` and `unique_id`

Return a result with each employee's `unique_id` (if available) and their `name`. If there is no matching `unique_id`, still include the employee.

## ✅ Approach (LEFT OUTER JOIN Using ID)

This solution performs a `LEFT OUTER JOIN` using the `id` column shared between both tables.

### Explanation:

- Use `LEFT OUTER JOIN` to keep all records from `Employees` and include matching records from `EmployeeUNI`.
- Use `USING(id)` for a cleaner join condition since both tables have the same join column.
- Select `eu.unique_id` and `e.name` as the final output.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
