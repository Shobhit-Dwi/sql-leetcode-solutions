# 577. Employee Bonus

🔗 [LeetCode Problem](https://leetcode.com/problems/employee-bonus/)

## 🧠 Problem Summary

You're given two tables:

- `Employee(empId, name, salary)`
- `Bonus(empId, bonus)`

Write a query to find the names and bonus amounts of all employees **who either did not receive a bonus** or received a **bonus less than 1000**.

## ✅ Approach (Using LEFT JOIN and Conditional Filter)

This solution uses a `LEFT JOIN` between the `Employee` and `Bonus` tables, followed by a `WHERE` clause to filter based on the bonus value.

### Explanation:

- We `LEFT JOIN` the `Employee` table with the `Bonus` table using the `empId` key.
- This ensures **all employees** are retained, even if they have **no matching bonus**.
- In the `WHERE` clause, we filter:
  - `b.bonus IS NULL`: for employees with **no bonus record**
  - `b.bonus < 1000`: for those who received a **low bonus**
- The query selects the `name` and the `bonus` amount for these employees.

📄 **See [`solution.sql`](./solution.sql) for the actual SQL query.**
