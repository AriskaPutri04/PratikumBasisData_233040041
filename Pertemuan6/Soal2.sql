SELECT e.Name, p.ProjectsName
FROM employee e
LEFT JOIN Projects p ON e.DepartmentsID = p.DepartmentsID;