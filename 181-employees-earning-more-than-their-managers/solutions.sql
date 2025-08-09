SELECT worker.name AS Employee
FROM Employee worker
JOIN Employee manager
ON worker.managerId = manager.id
WHERE worker.salary > manager.salary;
