--Use a subquery in a HAVING Clause

--Sequel subqueries can also be used in the wear or the having clause of a select statement. 
--This will allow you to filter your rows based on dynamic calculations that are kept up to date 
--as the data in your database changes. 

SELECT SalesOrderID
	,SUM(LineTotal) AS OrderTotal
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > 20000  -- here the having clause is compared with a constant value of 20000
;


-- If we want to compare HAVING with a dynamic value we can use sub query

--Suppose we want to compare with average ordertotal that will change as the database changes

SELECT AVG(ResultTable.MyValues) AS AverageValue
FROM (SELECT SUM(LineTotal) AS MyValues
		FROM Sales.SalesOrderDetail
		GROUP BY SalesOrderID) AS ResultTable;


SELECT SalesOrderID
	,SUM(LineTotal) AS OrderTotal
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > (SELECT AVG(ResultTable.MyValues) AS AverageValue
							FROM (SELECT SUM(LineTotal) AS MyValues
								FROM Sales.SalesOrderDetail
								GROUP BY SalesOrderID) AS ResultTable)
;