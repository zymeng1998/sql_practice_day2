SELECT c.City, COUNT(c.CustomerID) AS 'NumOfCustomer'
FROM Customers AS c left join Orders AS o ON c.CustomerID = o.CustomerID
GROUP BY c.City
;
