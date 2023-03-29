--Create and Use Variables in a query

--The SQL language is primarily used for querying data out of a relational database.
--But it can perform many other functions in the management of your database.
--Using SQL, you can create routines that function more like traditional programming languages, 
--by using variables and looping statements. Variables are placeholders

-- DECLARE statement with @ initiates variables and then datatype
--SET to assign value or use = value after inside DECLARE

DECLARE @MyFirstVariable INT;
SET @MyFirstVariable = 5;

SELECT @MyFirstVariable AS MyValue
	, @MyFirstVariable * 5 AS Multiplication
	, @MyFirstVariable + 10 AS Addition
;

-- The variables created in SQL Server, are what's known as a local variable. 
--That means the variable and its value only exists, as long as the single batch of operations is running.

DECLARE @Color VARCHAR(20) = 'Red';

SELECT ProductID
	, Name
	, ProductNumber
	, Color
	, ListPrice
FROM Production.Product
WHERE Color = @Color
;

--By having the variable declaration at the top of your script, you can make it easier to customize, 
--right on line number 1. This is particularly useful on very long queries, that might use the 
--same variable in a number of locations. Or when you want a query to include several different variables. 
--This way, users don't need to read through the entire script in order to find all of the places that 
--they need to update, when they want to tailor the query, to meet their own needs.