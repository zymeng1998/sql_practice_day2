SELECT CustomerID
FROM 
	(SELECT c.CustomerID, SUM(od.Quantity) as CountOfProducts
FROM Customers as c join Orders as o ON c.CustomerID = o.CustomerID
					join [Order Details] as od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID
HAVING SUM(od.Quantity) > 100) as tmp
