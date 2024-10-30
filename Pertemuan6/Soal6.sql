SELECT e.Name, m.Name, m.ManagerID
FROM Employee e
LEFT JOIN Employee m ON e.EmployeeID = m.ManagerID;
