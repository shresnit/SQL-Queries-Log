-- Match text with LIKE and wildcards
--When we need to match approximate text matches then we use LIKE

--Like Wild Card Characters
	-- %		Any string of zero or more
	-- _		Any single character
	-- [ABCDEF]	Any single character in set
	-- [A-F]	Any single character in range
	-- [^ABCDE]	Any single character not in set


SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A%';

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A';

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A%';

--Use of underscore

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A___';



--Use of Square Brackets

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[ABC]___';

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[A-C]___';

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[^ABC]___';