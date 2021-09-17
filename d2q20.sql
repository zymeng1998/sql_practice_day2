SELECT c.ContactName
FROM Customers c join Orders o ON c.CustomerID = o.CustomerID, (SELECT MAX(OrderDate) as 'orderdate' FROM Orders) as maxod
WHERE o.OrderDate = maxod.orderdate

