# 197. Rising Temperature

🔗 [LeetCode Problem](https://leetcode.com/problems/rising-temperature/)

## 🧠 Problem Summary

Given a `Weather` table with the following columns:
- `id`: unique record identifier
- `recordDate`: date of the weather record
- `temperature`: temperature on that day

Write a SQL query to find the `id`s of all days where the **temperature was higher than the previous day**.

## ✅ Approach (Using Self Join on Date Difference)

This solution uses a self join to compare the temperature of each day with the **previous day**.

### Explanation:

- We join the `Weather` table with itself using the condition:  
  `w1.recordDate = w2.recordDate + 1`  
  This aligns `w1` with the **next day** relative to `w2`.
- In the `WHERE` clause, we compare temperatures and filter for days where  
  `w1.temperature > w2.temperature`.
- The query then returns the `id` of `w1`, which corresponds to the day with the temperature rise.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
