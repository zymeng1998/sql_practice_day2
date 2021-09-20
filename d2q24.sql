SELECT DISTINCT o.OrderDate, p.ProductName
FROM [Order Details] as od join Orders as o ON od.OrderID = o.OrderID
							join Products as p ON od.ProductID = p.ProductID
--ORDER BY o.OrderDate
;