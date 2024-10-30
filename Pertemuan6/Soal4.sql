SELECT e.Name, s.Salaries
FROM Employee AS e
RIGHT JOIN Salaries AS s ON s.EmployeeID = e.EmployeeID;