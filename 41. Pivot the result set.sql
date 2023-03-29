--Pivot the Result State

--The standard output of a queries result is to have the data presented as individual rows. 
--Using the PIVOT operator, we can rotate those results, so that the data is displayed in a column format instead.
--Which may be beneficial for adding to a spreadsheet or another analysis platform.

SELECT ProductLine
	, AVG(ListPrice)
FROM Production.Product
WHERE ProductLine IS NOT NULL
GROUP BY ProductLine
;

SELECT 'Average List Price' AS 'Product Line',
	M, R, S, T
FROM (SELECT ProductLine
			, ListPrice
		FROM Production.Product) AS SourceData
PIVOT (AVG(ListPrice) FOR ProductLine IN (M, R, S, T)) AS PivotTable
;
