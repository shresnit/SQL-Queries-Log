-- Format date and times

SELECT BusinessEntityID
	, HireDate
	, FORMAT(HireDate, 'dddd, MMMM dd, yyyy')
	, FORMAT(HireDate, 'd-MMM')
FROM HumanResources.Employee
;