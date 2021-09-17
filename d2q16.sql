SELECT TOP 5 COUNT(o.ShipPostalCode) AS 'Count', o.ShipPostalCode AS [Zip Code]
FROM Products AS p 
	inner join [Order Details] AS od 
		ON p.ProductID = od.ProductID  
	inner join (SELECT OrderID, OrderDate, ShipPostalCode
				FROM Orders
				WHERE OrderDate > 09/17/2001) AS o
		ON od.OrderID = o.OrderID
WHERE o.ShipPostalCode IS NOT NULL AND o.OrderDate > 09/17/2001
GROUP BY o.ShipPostalCode
;


