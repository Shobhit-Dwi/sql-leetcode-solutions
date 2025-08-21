SELECT u.name, SUM(t.amount) AS balance
FROM Users u
JOIN Transactions t
USING(account)
GROUP BY u.name
HAVING SUM(t.amount) > 10000;
