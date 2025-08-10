SELECT e.name, b.bonus 
FROM Employee e 
LEFT JOIN Bonus b 
USING (empId)
WHERE b.bonus IS NULL OR bonus < 1000;
