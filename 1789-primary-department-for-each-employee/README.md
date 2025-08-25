# 1789. Primary Department for Each Employee

🔗 [LeetCode Problem](https://leetcode.com/problems/primary-department-for-each-employee/)

## 🧠 Problem Summary

Given an `Employee` table with columns:
- `employee_id`
- `department_id`
- `primary_flag` (which can be 'Y' or 'N')

Return the primary department for each employee. An employee's primary department is:
- The one with `primary_flag = 'Y'`, or
- The only department they belong to (if they have just one).

## ✅ Approach (Filter with WHERE + Handle Single Department via JOIN)

This solution identifies primary departments using two cases:

1. **Explicit Primary Department**:
   - Select all rows where `primary_flag = 'Y'`.

2. **Implicit Primary Department**:
   - Identify employees who belong to only one department using `GROUP BY employee_id HAVING COUNT(*) = 1`.
   - Join back with the original `Employee` table to get their `department_id`.

The final result is a union of both queries.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
