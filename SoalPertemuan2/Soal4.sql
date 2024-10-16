SELECT c.custid, c.companyname, o.orderid, o.orderdate
FROM Sales.customers AS c
INNER JOIN Sales.orders o ON c.custid = o.custid;