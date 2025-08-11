# 584. Find Customer Referee

🔗 [LeetCode Problem](https://leetcode.com/problems/find-customer-referee/)

## 🧠 Problem Summary

You are given a `Customer` table with the following columns:
- `id`: Unique customer ID
- `name`: Customer name
- `referee_id`: The ID of the customer who referred this customer (nullable)

Your task is to find the names of all customers **who were not referred by customer with id = 2**.

## ✅ Approach (Using WHERE clause with OR for NULL handling)

This solution uses a straightforward `WHERE` clause to filter the `Customer` table.

### Explanation:

- We need to exclude customers whose `referee_id = 2`.
- At the same time, we must **include** customers whose `referee_id` is **NULL** (i.e., they weren't referred by anyone).
- The condition `referee_id != 2 OR referee_id IS NULL` handles both cases:
  - Keeps customers referred by someone **other than ID 2**
  - Also includes customers with **no referee**

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
