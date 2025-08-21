# 1484. Group Sold Products By The Date

🔗 [LeetCode Problem](https://leetcode.com/problems/group-sold-products-by-the-date/)

## 🧠 Problem Summary

Given an `Activities` table with columns `sell_date` and `product`, return a summary that shows for each `sell_date`:
- The number of **distinct products sold**
- A **comma-separated list** of those product names (sorted alphabetically)

## ✅ Approach (DISTINCT + GROUP BY + LISTAGG)

This solution groups the unique product sales by date, counts them, and lists the products in sorted order.

### Explanation:

- Use a **subquery** with `SELECT DISTINCT sell_date, product` to ensure only unique product sales are considered.
- Use `GROUP BY sell_date` to summarize by date.
- Use `COUNT(product)` to count how many unique products were sold.
- Use `LISTAGG(product, ',') WITHIN GROUP (ORDER BY product)` to generate a comma-separated, alphabetically sorted list of products.
- Format the `sell_date` using `TO_CHAR(..., 'YYYY-MM-DD')` for a consistent date output.
- Order the final result by `sell_date`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
