SELECT pp.ProductSubcategoryID, Count(ProductID) AS "CountedProducts" 
FROM Production.Product pp
WHERE pp.ProductSubcategoryID IS NOT NULL
GROUP BY pp.ProductSubcategoryID
;