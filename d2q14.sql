SELECT DISTINCT ProductName
FROM Products AS p 
	inner join [Order Details] AS od 
		ON p.ProductID = od.ProductID  
	inner join Orders AS o 
		ON od.OrderID = o.OrderID
WHERE o.OrderDate > '09/17/1996'
;