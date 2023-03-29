--Round with mathematical functions

		-- Process input values and return single numeric value


SELECT BusinessEntityID
	, SalesYTD
	, ROUND(SalesYTD, 2) AS Round2
	, ROUND(SalesYTD, -2) AS RoundHundreds 
	, CEILING(SalesYTD) AS RoundCeiling -- Round to highest integer
	, FLOOR(SalesYTD) AS RoundFloor -- Round to lowest integer
FROM Sales.SalesPerson;
