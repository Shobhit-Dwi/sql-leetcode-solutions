# 1587. Bank Account Summary II

🔗 [LeetCode Problem](https://leetcode.com/problems/bank-account-summary-ii/)

## 🧠 Problem Summary

Given a `Users` table with columns `account` and `name`, and a `Transactions` table with columns `account` and `amount`, return the names of users whose **total transaction amount is greater than 10,000**.

## ✅ Approach (JOIN + GROUP BY + HAVING)

This solution joins the user and transaction data, aggregates the transaction totals, and filters by the required threshold.

### Explanation:

- Use `JOIN ... USING(account)` to combine user and transaction data based on the shared `account` field.
- Use `GROUP BY u.name` to group transactions by user.
- Use `SUM(t.amount)` to calculate the total balance for each user.
- Use `HAVING SUM(t.amount) > 10000` to filter only users with a total balance above 10,000.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
