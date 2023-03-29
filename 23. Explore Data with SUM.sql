-- Explore Data with SUM

USE AdventureWorks2019
GO

SELECT SalesOrderID
		, SUM(LineTotal) AS OrderTotal
	, SUM(OrderQty) AS NumberofItems
	, COUNT(DISTINCT ProductID) AS UniqueItems
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY OrderTotal DESC
;

--Finding the popularity of the product

SELECT ProductID
	,SUM(OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY TotalQuantitySold DESC;

-- Finding more information by joining tables

SELECT SalesOrderDetail.ProductID
	, Product.Name
	,SUM(SalesOrderDetail.OrderQty) AS TotalQuantitySold
FROM Sales.SalesOrderDetail
	INNER JOIN Production.Product
	ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
GROUP BY SalesOrderDetail.ProductID, Product.Name
ORDER BY TotalQuantitySold DESC;

