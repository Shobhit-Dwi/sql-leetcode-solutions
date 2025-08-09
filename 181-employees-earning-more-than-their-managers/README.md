# 181. Employees Earning More Than Their Managers

🔗 [LeetCode Problem](https://leetcode.com/problems/employees-earning-more-than-their-managers/)

## 🧠 Problem Summary

You're given a table `Employee` with the following columns:

- `id`: unique identifier for each employee
- `name`: employee name
- `salary`: employee salary
- `managerId`: the id of the employee's manager

Write a SQL query to find the names of employees who earn more than their managers.

## ✅ Approach (Using Self Join)

This solution uses a **self join** on the `Employee` table to compare each employee’s salary with their manager’s salary.

### Explanation:

- We alias the `Employee` table twice: once as `worker` and once as `manager`.
- Join them using `worker.managerId = manager.id` to match each employee with their manager.
- In the `WHERE` clause, we filter only those employees whose `worker.salary` is greater than `manager.salary`.
- Finally, we select only the employee's name.

This approach efficiently finds the required employees by comparing them directly with their managers using a simple self join.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
