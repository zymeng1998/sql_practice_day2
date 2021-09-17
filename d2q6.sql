SELECT tmp.ProductID, tmp.TheSum
FROM
	(SELECT ppi.ProductID, SUM(ppi.Quantity) as 'TheSum'
	FROM Production.ProductInventory ppi
	WHERE ppi.LocationID = 40
	GROUP BY ppi.ProductID) as tmp
WHERE TheSum < 100