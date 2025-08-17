# 1075. Project Employees I

🔗 [LeetCode Problem](https://leetcode.com/problems/project-employees-i/)

## 🧠 Problem Summary

Given two tables: `Project` and `Employee`, return each `project_id` along with the **average experience years** of all employees involved in that project, rounded to two decimal places.

- `Project` contains `project_id` and `employee_id` for employee assignments.
- `Employee` contains `employee_id` and `experience_years`.

## ✅ Approach (JOIN with GROUP BY and ROUND)

This solution joins the two tables to get employee experience data for each project, then calculates the average experience.

### Explanation:

- Use a `JOIN` between `Project` and `Employee` on the common `employee_id`.
- Use `GROUP BY project_id` to aggregate data by each project.
- Use `ROUND(AVG(...), 2)` to round the average experience to 2 decimal places.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
