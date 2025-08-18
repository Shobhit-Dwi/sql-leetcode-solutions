# 1148. Article Views I

🔗 [LeetCode Problem](https://leetcode.com/problems/article-views-i/)

## 🧠 Problem Summary

Given a table `Views` with columns `author_id` and `viewer_id`, return the list of author IDs where the author has viewed their own article.

## ✅ Approach (Filtering with WHERE and GROUP BY)

This solution filters the table to find cases where `author_id` is equal to `viewer_id` (the author viewed their own article). Then it groups the result by `author_id` and orders the output ascending by the author ID.

### Explanation:

- Use `WHERE author_id = viewer_id` to filter authors who viewed their own articles.
- Use `GROUP BY author_id` to get unique author IDs.
- Use `ORDER BY id ASC` to sort the author IDs in ascending order.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**
