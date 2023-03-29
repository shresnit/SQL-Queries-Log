--Inner Joins

SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person;

SELECT BusinessEntityID, PhoneNumber
FROM Person.PersonPhone;

--Relationship : Common Column BusinessEntityID

SELECT Person.BusinessEntityID
	,Person.FirstName
	,Person.LastName
	,PersonPhone.PhoneNumber
FROM Person.Person INNER JOIN Person.PersonPhone
	ON Person.BusinessEntityID = PersonPhone.BusinessEntityID
;

--Using Alias to keep code simple and easy to understand

SELECT A.BusinessEntityID
	,A.FirstName
	,A.LastName
	,B.PhoneNumber
FROM Person.Person AS A INNER JOIN Person.PersonPhone AS B
	ON A.BusinessEntityID = B.BusinessEntityID
;