# 182. Duplicate Emails

🔗 [LeetCode Problem](https://leetcode.com/problems/duplicate-emails/)

## 🧠 Problem Summary

Given a table `Person` with a single column `email`, identify all duplicate email addresses in the table — that is, emails that appear more than once.

## ✅ Approach (Using GROUP BY with HAVING)

This solution uses `GROUP BY` to group records by the `email` field, and `HAVING` to filter only those groups where the email appears more than once.

### Explanation:

- Use `GROUP BY email` to group the records by each unique email.
- Use `HAVING COUNT(email) > 1` to filter only those email groups that occur more than once.
- Use `SELECT DISTINCT` to ensure only unique duplicate emails are returned (although it's optional here, it reinforces intent).

This approach ensures we accurately find all duplicate emails in the `Person` table.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
