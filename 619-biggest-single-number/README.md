# 619. Biggest Single Number

🔗 [LeetCode Problem](https://leetcode.com/problems/biggest-single-number/)

## 🧠 Problem Summary

Given a table `MyNumbers` with a single column `num`, find the **largest number that appears exactly once** in the table.

If no such number exists, return `null`.

## ✅ Approach (Using GROUP BY + HAVING + MAX)

This solution uses a subquery with grouping and filtering, followed by a `MAX()` selection.

### Explanation:

1. Use `GROUP BY num` to group identical values.
2. Use `HAVING COUNT(num) = 1` to **filter only those numbers that appear once**.
3. Wrap that result in an outer query and apply `MAX(num)` to get the **largest** such number.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
