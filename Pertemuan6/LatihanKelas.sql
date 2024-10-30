CREATE TABLE Departments (
	DepartmentsID int IDENTITY(1,1) PRIMARY KEY,	
	DepartmentsName VARCHAR(50) NOT NULL
)

CREATE TABLE Projects(
	ProjectsID int IDENTITY(1,1) PRIMARY KEY,
	ProjectsName VARCHAR(50) NOT NULL,
	DepartmentsID int,
	FOREIGN KEY (DepartmentsID) REFERENCES Departments (DepartmentsID)
	ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Employee (
	EmployeeID int IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	DepartmentsID int,
       FOREIGN KEY (DepartmentsID) REFERENCES Departments (DepartmentsID)
		ON UPDATE CASCADE ON DELETE CASCADE,
	ManagerID int,
		FOREIGN KEY (ManagerID) REFERENCES Employee (EmployeeID)
	)

CREATE TABLE Salaries(
	 EmployeeID int
		FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
		ON UPDATE CASCADE ON DELETE CASCADE,
	 Salaries DECIMAL(10,2) NOT NULL
)

INSERT INTO [dbo].[Departments] ([DepartmentsName])
VALUES
	('human resources'),
	('finance'),
	('IT')

INSERT INTO [dbo].[Employee] ([Name], [DepartmentsID] , [ManagerID])
VALUES
	('Ariska', 1, NULL), --ManajerHR
	('Amel' ,1,1),
	('Dera' ,1,1),
	('Zeina' ,2, NULL), --ManajemenFinance
	('Ilona' ,2,2),
	('Nada' ,2,2),
	('Haifa' ,2,2),
	('Nurfatimah' ,3, NULL), --ManajerIT
	('Chalida' ,3,3),
	('Diana' ,3,3),
	('Anandita' ,3,3)

INSERT INTO [dbo].[Projects] ([ProjectsName], [DepartmentsID])
VALUES
    ('Training Program', 1),
	('Anual Budget Planning', 2),
	('Financial Riview', 2),
	('IT Infrastructure Upgrade', 3),
	('Cybersecurity Echancements', 3),
	('Requirment Drive', 1),
	('Expanse Management System', 2),
	('Data Backup and Recovery', 3),
	('Emmployee OnVoarding Portal', 1)

INSERT INTO [dbo].[Salaries] ([EmployeeID], [Salaries])
VALUES
	(1, 600000.00), --Ariska
	(2, 700000.00), --Amel
	(3, 650000.00), 
	(4, 400000.00),
	(5, 550000.00),
	(6, 500000.00),
	(7, 850000.00),
	(8, 800000.00),
	(9, 780000.00),
	(10, 659000.00),
	(11, 870000.00)
	

SELECT * FROM[dbo].[Departments]
SELECT * FROM[dbo].[Employee]
SELECT * FROM[dbo].[Projects]
SELECT * FROM[dbo].[Salaries]