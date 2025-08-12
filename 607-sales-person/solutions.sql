SELECT name 
FROM SalesPerson
WHERE name NOT IN (
    SELECT SalesPerson.name
    FROM SalesPerson
    INNER JOIN Orders USING(sales_id)
    INNER JOIN Company USING(com_id)
    WHERE Company.name = 'RED'
);
