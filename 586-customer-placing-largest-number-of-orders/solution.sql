-- First Solution: Using ROWNUM and ORDER BY
SELECT customer_number
FROM (
    SELECT customer_number, COUNT(*) AS order_count
    FROM Orders
    GROUP BY customer_number
    ORDER BY order_count DESC
)
WHERE ROWNUM = 1;


-- Second Solution: Using MAX() in a Subquery
SELECT customer_number 
FROM (
    SELECT customer_number, COUNT(*) AS order_count 
    FROM Orders 
    GROUP BY customer_number
) counts
WHERE order_count = (
    SELECT MAX(order_count) 
    FROM (
        SELECT COUNT(*) AS order_count 
        FROM Orders 
        GROUP BY customer_number
    ) max_count
);
