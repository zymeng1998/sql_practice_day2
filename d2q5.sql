SELECT ppi.ProductID, SUM(ppi.Quantity)
FROM Production.ProductInventory ppi
GROUP BY ppi.ProductID
;