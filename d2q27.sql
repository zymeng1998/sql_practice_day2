SELECT City, CompanyName as Name, ContactName, 'Customer' as Type
FROM Customers
UNION 
SELECT City, CompanyName as Name, ContactName, 'Supplier' as Type
FROM Suppliers
;