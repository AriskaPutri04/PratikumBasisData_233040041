SELECT e.Name, d.DepartmentsName
FROM [dbo].[Employee] AS e
LEFT JOIN [dbo].[Departments] AS d ON e.DepartmentsID = d.DepartmentsID;