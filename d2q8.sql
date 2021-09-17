SELECT tmp.ProductID, tmp.[average quantity]
FROM
	(SELECT ppi.ProductID, AVG(ppi.Quantity) as 'average quantity'
	FROM Production.ProductInventory ppi
	WHERE ppi.LocationID = 10
	GROUP BY ppi.ProductID) as tmp
