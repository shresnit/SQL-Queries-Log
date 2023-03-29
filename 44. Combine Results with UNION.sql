-- Chapter 9 Result Set Operators

--Combine Results with UNION

--When you have similar data in two different tables,
--you can add rows from one select statement to the rows of second SELECT query
--Use UNION

--In order for the UNION query to work
	-- the number of columns in both queries must be same
	-- Data type of these columns must be compatible


SELECT ProductCategoryID
	, Name
FROM Production.ProductCategory


SELECT ProductSubCategoryID
	, Name
FROM Production.ProductSubCategory
;

--Using UNION to create result of two tables in one
SELECT ProductCategoryID
	, NULL AS ProductSubCateogyID
	, Name
FROM Production.ProductCategory

UNION				-- Duplicates Value are exluded

SELECT ProductCategoryID
	, ProductSubCategoryID
	, Name
FROM Production.ProductSubCategory
;



SELECT ProductCategoryID
	, NULL AS ProductSubCateogyID
	, Name
FROM Production.ProductCategory

UNION ALL				-- Duplicates Value are included

SELECT ProductCategoryID
	, ProductSubCategoryID
	, Name
FROM Production.ProductSubCategory
;