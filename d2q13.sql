SELECT pcr.Name AS Country, psp.Name AS Province
FROM Person.CountryRegion as pcr join Person.StateProvince as psp
	ON pcr.CountryRegionCode = psp.CountryRegionCode
WHERE pcr.Name = 'Germany' OR pcr.Name = 'Canada'
;