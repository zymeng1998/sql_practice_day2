SELECT tmp.Shelf, tmp.ProductID, tmp.TheSum
FROM
	(SELECT ppi.Shelf, ppi.ProductID, SUM(ppi.Quantity) as 'TheSum'
	FROM Production.ProductInventory ppi
	WHERE ppi.LocationID = 40
	GROUP BY ppi.ProductID, ppi.Shelf) as tmp
WHERE TheSum < 100