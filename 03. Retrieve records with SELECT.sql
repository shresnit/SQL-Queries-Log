
-- USING SELECT STATEMENT


SELECT CustomerID, FirstName, LastName, Address, City, State
FROM Red30Tech.dbo.Customers;


--Selecting certain columns
SELECT FirstName, LastName
FROM Red30Tech.dbo.Customers;

--Can rearrange the name as we need
SELECT State, City, FirstName, LastName
FROM Red30Tech.dbo.Customers;

--Selecting Top desired columns
SELECT TOP(3) State, City, FirstName, LastName
FROM Red30Tech.dbo.Customers;

--selecting all columns (* is wildcard for all)
SELECT *
FROM Red30Tech.dbo.Customers;