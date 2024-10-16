SELECT *
FROM HR.Employees;


SELECT firtsname, lastname
FROM HR.Employees;


SELECT DISTINCT 
FROM HR.Employees;


SELECT COUNT (*)
FROM HR.Employees;


SELECT country,COUNT(*)
FROM HR.Employees
WHERE country = 'USA'
GROUP BY country;


SELECT firtsname, lastname FROM HR.Employees
ORDER BY firtsname DESC;


SELECT TOP(10) lastname
FROM HR.Employees;


SELECT firstname 
FROM HR.Employees 
WHERE lastname 
BETWEEN 'A' AND 'M';

SELECT birthdate
FROM HR.Employees 
WHERE birthdate
BETWEEN '1958-12-21' AND '1962-02-08';


SELECT firtsname, lastname
FROM HR.Employees 
WHRE

