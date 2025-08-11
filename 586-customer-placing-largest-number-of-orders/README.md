# 586. Customer Placing the Largest Number of Orders

🔗 [LeetCode Problem](https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/)

## 🧠 Problem Summary

Given a table `Orders` with the column `customer_number`, identify the customer who has placed the **most number of orders**. If there are multiple customers with the same maximum number, return any one of them.

## ✅ Approach (Using Aggregation and Row Limiting)

This problem was solved using two SQL approaches, both relying on aggregation (`COUNT`) and filtering.

---

### 🔹 First Solution (ROWNUM-based Filtering)

- Use `GROUP BY` to count the number of orders per customer.
- Sort the result by the count in descending order.
- Use `ROWNUM = 1` (in Oracle SQL) to return only the top customer.

---

### 🔹 Second Solution (Subquery with `MAX` Comparison)

- First, count orders per customer using `GROUP BY`.
- In a nested subquery, calculate the **maximum** order count.
- Then, return the `customer_number` whose count matches the maximum.

---

Both solutions correctly identify the customer with the largest number of orders.

📄 **See [`solution.sql`](./solution.sql) for both SQL queries.**
