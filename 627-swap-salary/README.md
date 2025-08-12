# 627. Swap Salary

🔗 [LeetCode Problem](https://leetcode.com/problems/swap-salary/)

## 🧠 Problem Summary

Given a table `Salary` with columns including `sex`, swap the gender values in the table:

- Change every `'f'` to `'m'`
- Change every `'m'` to `'f'`

## ✅ Approach (Using CASE in UPDATE Statement)

This solution updates the `sex` column using a `CASE` expression:

- If the current `sex` value is `'f'`, update it to `'m'`.
- Otherwise, update it to `'f'`.

This efficiently swaps all genders in a single update query.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL statement.**
