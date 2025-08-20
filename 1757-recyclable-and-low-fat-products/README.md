# 1757. Recyclable and Low Fat Products

🔗 [LeetCode Problem](https://leetcode.com/problems/recyclable-and-low-fat-products/)

## 🧠 Problem Summary

Given a `Products` table with columns `product_id`, `low_fats`, and `recyclable`, return the IDs of products that are **both low fat (`'Y'`) and recyclable (`'Y'`)**.

## ✅ Approach (WHERE Clause Filtering)

This solution uses simple filtering with `WHERE` conditions to select only the rows that match both required criteria.

### Explanation:

- Use `WHERE low_fats = 'Y' AND recyclable = 'Y'` to filter the products that satisfy both conditions.
- Select only the `product_id` column for the result.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
