SELECT c.ContactName, SUM(od.Quantity) as CountOfProducts
FROM Customers as c join Orders as o ON c.CustomerID = o.CustomerID
					join [Order Details] as od ON o.OrderID = od.OrderID
GROUP BY c.ContactName
