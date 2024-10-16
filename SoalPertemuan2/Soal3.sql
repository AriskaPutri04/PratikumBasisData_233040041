SELECT c.custid, c.companyname, o.orderid, orderdate
FROM Sales.Customers AS c
INNER JOIN Sales.Orders AS o ON o.custid = c.custid;
