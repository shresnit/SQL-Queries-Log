--Cross Join 

-- Joining data table that has no relation and populating cross tables each other

SELECT Department.Name
FROM HumanResources.Department;

SELECT AddressType.Name
FROM Person.AddressType;

SELECT A.Name
	, B.Name
FROM HumanResources.Department AS A CROSS JOIN Person.AddressType AS B;

--Example: If you want to create a football match against each department

SELECT A.Name AS 'HomeTeam'
	, B.Name AS 'AwayTeam'
FROM HumanResources.Department AS A CROSS JOIN HumanResources.Department AS B
WHERE A.Name <> B.Name;