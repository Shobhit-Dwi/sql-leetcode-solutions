# 595. Big Countries

🔗 [LeetCode Problem](https://leetcode.com/problems/big-countries/)

## 🧠 Problem Summary

Given a `World` table with country-level data including `name`, `population`, and `area`, return the name, population, and area of countries that are considered **"big"**.

A country is considered big if:
- Its **area is at least 3,000,000**, or
- Its **population is at least 25,000,000**

## ✅ Approach (Simple WHERE clause with OR condition)

This solution uses a basic filtering approach with a `WHERE` clause to identify countries that satisfy either condition.

### Explanation:

- We `SELECT` the required columns: `name`, `population`, and `area`.
- The `WHERE` clause includes:
  - `area >= 3000000`
  - OR `population >= 25000000`
- This ensures we retrieve countries that meet **either** of the "big country" criteria.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
