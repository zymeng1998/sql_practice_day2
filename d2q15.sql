SELECT TOP 5 COUNT(o.ShipPostalCode) AS 'Count', o.ShipPostalCode AS [Zip Code]
FROM Products AS p 
	inner join [Order Details] AS od 
		ON p.ProductID = od.ProductID  
	inner join Orders AS o 
		ON od.OrderID = o.OrderID
WHERE o.ShipPostalCode IS NOT NULL
GROUP BY o.ShipPostalCode
;