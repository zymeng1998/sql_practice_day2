SELECT e1.EmployeeID, e2.EmployeeID, e1.Title, e2.Title
FROM Employees as e1, Employees as e2
WHERE e1.Title = e2.title AND e1.EmployeeID != e2.EmployeeID
;