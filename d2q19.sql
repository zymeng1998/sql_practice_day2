SELECT DISTINCT c.ContactName
FROM Customers c join Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate > '1998-01-01'
