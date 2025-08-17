# 1068. Product Sales Analysis I

🔗 [LeetCode Problem Link](https://leetcode.com/problems/product-sales-analysis-i)

## 🧩 Problem Summary

You are given two tables: `Sales` and `Product`. The task is to write an SQL query that displays the product name, year of the sale, and the price for each transaction.

- `Sales` contains transaction records with product IDs, sale years, and prices.
- `Product` contains product IDs and corresponding product names.

## 💡 Approach

To get the desired output, we need to combine the `Sales` and `Product` tables in order to display product names alongside sales data. This is done using an `INNER JOIN` on the `product_id` column, which both tables share.

We use the `USING(product_id)` clause in the `JOIN`, which simplifies the syntax when joining on a column with the same name in both tables.

The query selects the following:

- `product_name` from the `Product` table,
- `year` and `price` from the `Sales` table.

- 📄 See solution.sql for the actual SQL code.
