--Left, Right and Full Outer Joins

SELECT BusinessEntityID, PersonType, FirstName, LastName
FROM Person.Person;

SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee;

--Inner Join (Common Records)
SELECT A.BusinessEntityID
	, A.PersonType
	, A.FirstName
	, A.LastName
	, B.JobTitle
FROM Person.Person AS A INNER JOIN HumanResources.Employee AS B
	ON A.BusinessEntityID = B.BusinessEntityID
;

--Left Join (Table A records + Common Records)
SELECT A.BusinessEntityID
	, A.PersonType
	, A.FirstName
	, A.LastName
	, B.JobTitle
FROM Person.Person AS A LEFT JOIN HumanResources.Employee AS B
	ON A.BusinessEntityID = B.BusinessEntityID
;


--Right Join ( Common Records + Table B Records)
SELECT A.BusinessEntityID
	, A.PersonType
	, A.FirstName
	, A.LastName
	, B.JobTitle
FROM Person.Person AS A RIGHT JOIN HumanResources.Employee AS B
	ON A.BusinessEntityID = B.BusinessEntityID
;

--Full Join ( Table A records + Common Records + Table B Records)
SELECT A.BusinessEntityID
	, A.PersonType
	, A.FirstName
	, A.LastName
	, B.JobTitle
FROM Person.Person AS A FULL JOIN HumanResources.Employee AS B
	ON A.BusinessEntityID = B.BusinessEntityID
;