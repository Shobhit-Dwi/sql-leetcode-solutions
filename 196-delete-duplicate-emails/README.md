# 196. Delete Duplicate Emails

🔗 [LeetCode Problem](https://leetcode.com/problems/delete-duplicate-emails/)

## 🧠 Problem Summary

You are given a table `Person` with columns:
- `id`: unique identifier for each row
- `email`: email address (not guaranteed to be unique)

Write a SQL query to **delete all duplicate email entries**, keeping only the record with the **smallest `id`** for each duplicate group.

## ✅ Approach (Using Subquery with MIN and NOT IN)

This solution uses a subquery to identify the **minimum `id` for each unique email** and deletes all other rows.

### Explanation:

- Use a subquery to select the **minimum `id`** for each `email` group using `GROUP BY email`.
- Use the outer `DELETE` statement to remove rows **where the `id` is NOT in** the result of that subquery.
- This ensures that for each email, only the row with the smallest `id` is retained, and all duplicates are deleted.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
