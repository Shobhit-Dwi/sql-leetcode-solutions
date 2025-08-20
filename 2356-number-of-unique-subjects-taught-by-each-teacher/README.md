# 2356. Number of Unique Subjects Taught by Each Teacher

🔗 [LeetCode Problem](https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/)

## 🧠 Problem Summary

Given a table `Teacher` with columns `teacher_id` and `subject_id`, return each `teacher_id` along with the number of **unique subjects** they teach.

## ✅ Approach (GROUP BY with COUNT DISTINCT)

This solution counts how many **distinct subjects** each teacher teaches.

### Explanation:

- Use `GROUP BY teacher_id` to group the data by each teacher.
- Use `COUNT(DISTINCT subject_id)` to count only the **unique** subjects per teacher.
- Alias the count as `cnt`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
