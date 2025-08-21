# 1393. Capital Gain/Loss

🔗 [LeetCode Problem](https://leetcode.com/problems/capital-gainloss/)

## 🧠 Problem Summary

Given a `Stocks` table with columns `stock_name`, `operation` (`'Buy'` or `'Sell'`), and `price`, return the **net capital gain or loss** for each stock. Selling increases capital, while buying decreases it.

## ✅ Approach (CASE + SUM with GROUP BY)

This solution calculates capital gain or loss using conditional aggregation.

### Explanation:

- Use `CASE` inside `SUM` to handle both operations:
  - Subtract the `price` when the ope
