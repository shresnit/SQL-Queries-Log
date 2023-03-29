/*
What is a Sub Query

-SELECT queries can be used inside of other queries. 

-When this occurs, they're called subqueries or inner queries.

-When the SQL Server Database Engine executes a query, 
the subquery will run first and returns values that can then be used by the outer portion of the query.

*/

-- Creating a Sales Gap based on the maximum saleYTD of a record or person


SELECT BusinessEntityID
	, SalesYTD
	, (SELECT MAX(SalesYTD) FROM Sales.SalesPerson) AS "Maximum SaleYTD" -- Using subquery to find max value
	, (SELECT MAX(SalesYTD) FROM Sales.SalesPerson) - SalesYTD AS SalesGap -- Using subquery in calculation
FROM Sales.SalesPerson
;