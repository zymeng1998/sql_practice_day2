SELECT pp.Color, pp.Class, COUNT(1) AS [TheCount], AVG(pp.ListPrice) AS [AvgPrice] 
FROM Production.Product pp
WHERE pp.Class is not null AND pp.Color is not null
GROUP BY pp.color, pp.Class
;