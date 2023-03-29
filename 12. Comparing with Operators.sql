--Comparision Operators

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate = 7.75;


SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate >= 7.75;

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE (TaxRate > 7) AND (TaxRate< 10);

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE (TaxRate >= 7) AND (TaxRate<= 10); -- inclusive