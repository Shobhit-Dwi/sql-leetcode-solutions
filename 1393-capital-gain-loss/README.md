# 1393. Capital Gain/Loss

🔗 [LeetCode Problem](https://leetcode.com/problems/capital-gainloss/)

## 🧠 Problem Summary

Given a `Stocks` table with columns `stock_name`, `operation` (`'Buy'` or `'Sell'`), and `price`, return the **net capital gain or loss** for each stock. Selling increases capital, while buying decreases it.

## ✅ Approach (CASE + SUM with GROUP BY)

This solution calculates capital gain or loss using conditional aggregation.

### Explanation:

- Use `CASE` inside `SUM` to handle both operations:
  - Subtract the `price` when the operation is `'Buy'`.
  - Add the `price` when the operation is `'Sell'`.
- Group the result by `stock_name` to compute the capital gain/loss for each stock.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
