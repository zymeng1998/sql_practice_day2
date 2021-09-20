SELECT e.EmployeeID, e.FirstName, e.LastName, tmp.c as [count]
FROM Employees as e,
	(SELECT e1.ReportsTo, COUNT(e1.ReportsTO) c
	FROM Employees as e1
	GROUP BY e1.ReportsTo) as tmp
WHERE tmp.ReportsTo = e.EmployeeID AND c > 2
;