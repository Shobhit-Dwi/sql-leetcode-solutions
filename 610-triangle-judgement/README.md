# 610. Triangle Judgement

🔗 [LeetCode Problem](https://leetcode.com/problems/triangle-judgement/)

## 🧠 Problem Summary

You're given a table `Triangle` with three columns `x`, `y`, and `z` representing the lengths of the sides of a triangle.  
Determine whether the given sides can form a valid triangle.

A valid triangle must satisfy the triangle inequality condition:
- Sum of any two sides must be **greater than** the third side.

## ✅ Approach (Using CASE WHEN with Triangle Inequality Check)

This solution uses a `CASE` statement to evaluate the triangle inequality condition directly within the `SELECT` clause.

### Explanation:

- For each row in the `Triangle` table:
  - Check if all of the following are true:
    - `x + y > z`
    - `y + z > x`
    - `z + x > y`
- If the condition holds, label it `'Yes'` — indicating a valid triangle.
- Otherwise, label it `'No'`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
