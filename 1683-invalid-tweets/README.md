# 1683. Invalid Tweets

🔗 [LeetCode Problem](https://leetcode.com/problems/invalid-tweets/)

## 🧠 Problem Summary

Given a `Tweets` table with columns `tweet_id` and `content`, return the IDs of tweets where the content exceeds 15 characters in length.

## ✅ Approach (WHERE with LENGTH Filter)

This solution filters tweets by checking the length of their content.

### Explanation:

- Use `WHERE LENGTH(content) > 15` to identify tweets that are considered invalid.
- Select only the `tweet_id` column for the result.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
