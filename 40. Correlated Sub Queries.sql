--Correlated Subqueries

/*
Subqueries can be used in place of JOIN statements in a query as an alternate way of reviewing
related information that spread across multiple tables*/

SELECT BusinessEntityID
	, FirstName
	, LastName
FROM Person.Person
;

SELECT BusinessEntityID
	, JobTitle
FROM HumanResources.Employee
;

--Joining the Table

SELECT Person.BusinessEntityID
	, Person.FirstName
	, Person.LastName
	, Employee.JobTitle
FROM Person.Person
	INNER JOIN HumanResources.Employee
	ON Person.BusinessEntityID = Employee.BusinessEntityID
;

-- We can use subquery to perform the same task via correlated subquery

SELECT BusinessEntityID
	, FirstName
	, LastName
	, (SELECT JobTitle
		FROM HumanResources.Employee
		WHERE BusinessEntityID = MyPerson.BusinessEntityID) AS JobTitle
FROM Person.Person As MyPerson
WHERE (SELECT JobTitle
		FROM HumanResources.Employee
		WHERE BusinessEntityID = MyPerson.BusinessEntityID) IS NOT NULL

-- One method may perform better than other depending on the database structure, indexes and number of records
;