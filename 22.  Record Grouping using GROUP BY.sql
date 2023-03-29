--Understanding record grouping

USE AdventureWorks2019
GO


-- GROUP BY CLAUSE
	-- Follows from FROM clause in SELECT Statement
	-- List the column that hold the values to consolidate
	-- Group Records together into buckets
	-- Use Aggregated functions to perform calcukations on a group such as count, cum, min, max, avg

-- When you run a query that includes a GROUP BY CLAUSE every column you ask for in the SELECT clause
-- need to be either included in the GROUP BY clause or used in aggregated fuctions


SELECT City, StateProvinceID, COUNT(*) AS CountofAddresses
FROM Person.Address
GROUP BY City, StateProvinceID
ORDER BY CountofAddresses DESC
;


Easy to Remember

"So Few Workers Go Home On time"


So		: SELECT
Few		: FROM
Workers	: WHERE
Go		: GROUP BY
Home		: HAVING
On time	: ORDER BY