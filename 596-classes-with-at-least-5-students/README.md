# 596. Classes With at Least 5 Students

🔗 [LeetCode Problem](https://leetcode.com/problems/classes-with-at-least-5-students/)

## 🧠 Problem Summary

Given a `Courses` table with student enrollments, return the `class` IDs that have **at least 5 students** enrolled.

## ✅ Approach (Aggregation with Subquery)

This solution uses a two-level query to count students per class and filter based on that count.

### Explanation:

1. In the inner query:
   - Group the `Courses` table by `class`.
   - Use `COUNT(*)` to calculate how many students are in each class.
   - Alias this count as `no_of_students_in_a_class`.

2. In the outer query:
   - Select the `class` values where the student count is greater than or equal to 5.

This effectively returns only those class IDs where **at least 5 students** are enrolled.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
