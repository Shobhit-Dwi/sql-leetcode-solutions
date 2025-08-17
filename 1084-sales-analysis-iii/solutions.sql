SELECT DISTINCT p.product_id, p.product_name
FROM Product p
JOIN Sales s ON p.product_id = s.product_id
WHERE s.sale_date BETWEEN DATE '2019-01-01' AND DATE '2019-03-31'
  AND p.product_id NOT IN (
    SELECT product_id
    FROM Sales
    WHERE sale_date < DATE '2019-01-01' OR sale_date > DATE '2019-03-31'
  );
