# 511. Game Play Analysis I

📌 **Problem Link:** [LeetCode #511 – Game Play Analysis I](https://leetcode.com/problems/game-play-analysis-i/)

---

## 📝 Problem Statement

Write an SQL query to find the **first login date** for each player.

---

## ✅ Approach

This solution uses a straightforward aggregation:

- Used `MIN()` on `event_date` to find each player’s first login date
- Grouped data by `player_id` to get one row per player
- Used `TO_CHAR()` to format the date output (depends on SQL dialect as in the solution I used oracle sql it will vary on your dialect remember this.)

---

## 💡 SQL Solution

See `solution.sql` file for actual query.
