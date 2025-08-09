# 183. Customers Who Never Order

🔗 [LeetCode Problem](https://leetcode.com/problems/customers-who-never-order/)

## 🧠 Problem Summary

You're given two tables:

- `Customers` with columns: `id`, `name`
- `Orders` with column: `customerId`

Write a SQL query to find the names of all customers who never placed an order.

## ✅ Approach (Using LEFT OUTER JOIN with NULL Filtering)

This solution uses a `LEFT OUTER JOIN` between the `Customers` and `Orders` tables, then filters for customers who have no matching orders by checking for `NULL` in the joined result.

### Explanation:

- Start by performing a `LEFT OUTER JOIN` on `Customers` (`c`) and `Orders` (`o`) using `c.id = o.customerId`.
- After the join, customers who **have never placed an order** will have `NULL` values in the `Orders` table columns.
- We filter for such cases using `WHERE o.customerId IS NULL`.
- Finally, we select the `name` column and alias it as `Customers`.

This approach ensures only those customers with no orders are returned.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
