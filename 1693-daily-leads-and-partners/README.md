# 1693. Daily Leads and Partners

🔗 [LeetCode Problem](https://leetcode.com/problems/daily-leads-and-partners/)

## 🧠 Problem Summary

Given a table `DailySales` with columns `date_id`, `make_name`, `lead_id`, and `partner_id`, return the number of **unique leads** and **unique partners** for each `make_name` on each `date_id`.

## ✅ Approach (GROUP BY with COUNT DISTINCT)

This solution uses `GROUP BY` and `COUNT(DISTINCT ...)` to calculate the required metrics.

### Explanation:

- Use `GROUP BY date_id, make_name` to group the data by date and car brand.
- Use `COUNT(DISTINCT lead_id)` to get the number of unique leads.
- Use `COUNT(DISTINCT partner_id)` to get the number of unique partners.
- Format the date using `TO_CHAR(date_id, 'YYYY-MM-DD')` to standardize the output format.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
