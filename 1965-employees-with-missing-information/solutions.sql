SELECT employee_id FROM Employees
UNION
SELECT employee_id FROM Salaries
MINUS
SELECT employee_id FROM Employees INNER JOIN Salaries USING(employee_id);
