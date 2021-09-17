SELECT tmp.ProductID, tmp.Shelf, tmp.[TheAvg]
FROM
	(SELECT ppi.Shelf, ppi.ProductID, AVG(ppi.Quantity) as 'TheAvg'
	FROM Production.ProductInventory ppi
	WHERE ppi.LocationID = 10
	GROUP BY ppi.ProductID,ppi.Shelf) as tmp;
;