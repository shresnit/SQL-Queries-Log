--Limit Results with Top

SELECT TaxRate, Name
FROM Sales.SalesTaxRate;


SELECT TOP (3) TaxRate, Name -- Returns top 3 rows
FROM Sales.SalesTaxRate;

SELECT TOP (3) TaxRate, Name -- Returns top 3 which have highest tax rate adding order by
FROM Sales.SalesTaxRate
ORDER BY TaxRate DESC;

SELECT TOP (3) TaxRate, Name -- Returns top 3 which have lowest tax rate adding order by
FROM Sales.SalesTaxRate
ORDER BY TaxRate;

--We can use TOP # PERCENT to return the records by proportion

SELECT TOP 50 PERCENT TaxRate, Name 
FROM Sales.SalesTaxRate
ORDER BY TaxRate;


SELECT TOP (5) TaxRate, Name 
FROM Sales.SalesTaxRate
ORDER BY TaxRate;


--Use WITH TIE option with TOP to return more than 5 rows that have same value of the 5th value
SELECT TOP (5) WITH TIES TaxRate, Name 
FROM Sales.SalesTaxRate
ORDER BY TaxRate;