# 1327. List the Products Ordered in a Period

🔗 [LeetCode Problem](https://leetcode.com/problems/list-the-products-ordered-in-a-period/)

## 🧠 Problem Summary

Given two tables `Products` and `Orders`, return the product names and the total units ordered for each product **during February 2020**, but only include products that had **at least 100 units** ordered during that period.

## ✅ Approach (JOIN + FILTER + GROUP BY + HAVING)

This solution joins product and order information, filters orders within a specific date range, groups them by product, and includes only those with sufficient unit totals.

### Explanation:

- Use `INNER JOIN` to combine `Products` and `Orders` on `product_id`.
- Filter with `WHERE order_date >= DATE '2020-02-01' AND order_date < DATE '2020-03-01'` to select orders in February 2020.
- Group by `product_name` to calculate total units per product.
- Use `HAVING SUM(unit) >= 100` to include only products that reached the threshold.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
