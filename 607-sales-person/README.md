# 607. Sales Person

🔗 [LeetCode Problem](https://leetcode.com/problems/sales-person/)

## 🧠 Problem Summary

Given a list of `SalesPerson`, `Company`, and `Orders` tables, write a query to find the names of all salespersons **who did not have any orders from the company named 'RED'**.

## ✅ Approach (Using Subquery with NOT IN)

This solution filters out salespersons who have handled orders from 'RED' using a subquery.

### Explanation:

1. The inner subquery:
   - Joins the `SalesPerson`, `Orders`, and `Company` tables using `sales_id` and `com_id`.
   - Filters only the salespersons who handled orders from the company `'RED'`.

2. The outer query:
   - Selects all salespersons from the `SalesPerson` table whose names are **not in** the result of the inner subquery.
   - This effectively returns salespersons **not involved** with the `'RED'` company.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
