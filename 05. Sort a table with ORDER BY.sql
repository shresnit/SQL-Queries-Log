SELECT CustomerID, FirstName, LastName, Address, City, State 
FROM dbo.Customers
ORDER BY FirstName, LastName  -- default is ascending

;

SELECT CustomerID, FirstName, LastName, Address, City, State 
FROM dbo.Customers
ORDER BY FirstName DESC, LastName 

;

SELECT CustomerID, FirstName, LastName, Address, City, State 
FROM dbo.Customers
WHERE state = 'CA' -- WHERE clause before order by
ORDER BY FirstName DESC, LastName 
;