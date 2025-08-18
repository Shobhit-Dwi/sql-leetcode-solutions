# 1148. Article Views I

🔗 [LeetCode Problem](https://leetcode.com/problems/article-views-i/)

## 🧠 Problem Summary

You are given a table `Views` with `author_id` and `viewer_id`. Return the IDs of authors who viewed their own articles.

## ✅ Approach (DISTINCT with WHERE and ORDER BY)

This solution filters the records where the author is the same as the viewer (self-views), and returns a sorted list of distinct author IDs.

### Explanation:

- Use `WHERE author_id = viewer_id` to filter for self-views.
- Use `DISTINCT` to return each qualifying `author_id` only once.
- Use `ORDER BY id ASC` to return the result in ascending order.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL code.**

