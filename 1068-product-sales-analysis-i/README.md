# 1068. Product Sales Analysis I

🔗 [LeetCode Problem](https://leetcode.com/problems/product-sales-analysis-i/)

## 🧠 Problem Summary

You are given two tables: `Sales` and `Product`. The task is to display the `product_name`, `year`, and `price` for each sale.

- `Sales` contains `product_id`, `year`, and `price` for each transaction.
- `Product` contains `product_id` and `product_name`.

## ✅ Approach (INNER JOIN with USING)

This solution joins the `Sales` and `Product` tables to retrieve product names along with sales information.

### Explanation:

- Use an `INNER JOIN` between `Sales` and `Product` using the shared column `product_id`.
- `USING(product_id)` simplifies the join when both tables have a column with the same name.
- Select the `product_name` from `Product`, and `year`, `price` from `Sales`.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
