# 175. Combine Two Tables

🔗 [LeetCode Problem](https://leetcode.com/problems/combine-two-tables/)

## 🧠 Problem Summary

You are given two tables:

- `Person` table with columns: `personId`, `lastName`, `firstName`
- `Address` table with columns: `addressId`, `personId`, `city`, `state`

The goal is to write a SQL query to output `firstName`, `lastName`, `city`, and `state` of each person — including those who **may not have an address**.

## ✅ Approach (Using LEFT OUTER JOIN)

This solution uses a `LEFT OUTER JOIN` to combine data from the `Person` and `Address` tables. The `LEFT OUTER JOIN` ensures that **all persons** from the `Person` table are included in the result, regardless of whether they have a matching entry in the `Address` table.

### Explanation:

- Start by selecting the desired columns: `firstName`, `lastName`, `city`, and `state`.
- Use `LEFT OUTER JOIN` to combine `Person` (`p`) with `Address` (`a`) on the `personId` column.
- This guarantees that all entries in the `Person` table appear in the result, even if the corresponding `Address` is missing (in which case `city` and `state` will be `NULL`).

This approach fulfills the requirement to include all people, even those without address records.

📄 **See [`solution.sql`](./solution.sql) for the full SQL query.**

