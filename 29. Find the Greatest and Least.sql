--Find Greatest and Least Value

--Two new fuctions that has been added to SQL Server 2022 that helps to compare numbers and text strings
--across multiple columns in the same row

SELECT FirstName
	, LastName
	, GREATEST(FirstName, LastName) AS 'Highest Alphabetical'
	, LEAST (FirstName, LastName) As 'Lowest Alphabetical'
FROM Person.Person
ORDER BY BusinessEntityID
;


SELECT BusinessEntityID
	, VacationHours
	, SickLeaveHours
	, GREATEST(VacationHours, SickLeaveHours) AS 'Greatest'
	, LEAST(VacationHours, SickLeaveHours) AS 'Least'
	, IIF(GREATEST(VacationHours, SickLeaveHours) = VacationHours, 'Vacation', 'Sick') AS 'Which is Higher?'
FROM HumanResources.Employee
;

--Min and Max compare values within a column. In contrast, Greatest and Least compares values within multiple columns in same row
