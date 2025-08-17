# 1084. Sales Analysis III

🔗 [LeetCode Problem](https://leetcode.com/problems/sales-analysis-iii/)

## 🧠 Problem Summary

Given two tables: `Product` and `Sales`, return the `product_id` and `product_name` of products that were sold **only** in the first quarter of 2019 (from `2019-01-01` to `2019-03-31`), and **not before or after** that period.

## ✅ Approach (JOIN with NOT IN and Date Filtering)

This solution filters the products based on the specific date constraints using a combination of `JOIN`, `WHERE`, and `NOT IN`.

### Explanation:

- Join `Product` and `Sales` on `product_id` to get product info alongside sales data.
- Filter sales to include only those between `'2019-01-01'` and `'2019-03-31'`.
- Exclude any `product_id` that had a sale **outside** that date range using a subquery with `NOT IN`.
- Use `DISTINCT` to ensure each qualifying product appears only once.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
