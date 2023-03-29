--Filtering groups with HAVING

SELECT Color
	, COUNT(*) AS NumberofProducts
FROM Production.Product
WHERE Color IS NOT NULL -- Filtering out individual rows within a group
GROUP BY Color
HAVING COUNT(*) > 25 -- Filtering entire groups
;