--Create values with constants and math

SELECT Name,
	ProductNumber
FROM Production.Product;

SELECT Name,
	ProductNumber,
	'AdventureWorks' AS Manufacturer -- Defining constant text value for every records
FROM Production.Product;


SELECT Name,
	ProductNumber,
	'AdventureWorks' AS Manufacturer,
	ListPrice,
	ListPrice * .85 AS SalePrice -- Calculating SalePrice based on exisiting column (math)
FROM Production.Product
WHERE ListPrice > 0
;
