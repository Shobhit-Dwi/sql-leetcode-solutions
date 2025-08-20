# 1741. Find Total Time Spent by Each Employee

🔗 [LeetCode Problem](https://leetcode.com/problems/find-total-time-spent-by-each-employee/)

## 🧠 Problem Summary

Given a table `Employees` with columns `emp_id`, `event_day`, `in_time`, and `out_time`, return for each employee and day the total time they spent in the office.

## ✅ Approach (GROUP BY and SUM)

This solution calculates the total time spent by each employee on each day by grouping and summing the time differences.

### Explanation:

- Use `GROUP BY event_day, emp_id` to calculate time per employee per day.
- Use `SUM(out_time - in_time)` to
