SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
INNER JOIN Orders o
ON p.product_id = o.product_id
WHERE order_date >= DATE '2020-02-01' AND order_date < DATE '2020-03-01'
GROUP BY product_name
HAVING SUM(unit) >= 100;
