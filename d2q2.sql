SELECT Count(1) 
FROM Production.Product pp
WHERE pp.ProductSubcategoryID IS NOT NULL
;