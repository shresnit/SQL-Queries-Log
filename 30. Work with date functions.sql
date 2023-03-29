--Work with date fuctions

SELECT BusinessEntityID
	, HireDate
	, YEAR(HireDate) AS HireYear
	, MONTH(HireDate) AS HireMonth
	, DAY(HireDate) AS HireDay
	, DATEDIFF(day, HireDate, GETDATE()) AS DaysSinceHire
	, DATEDIFF(year, HireDate, GETDATE()) AS YearsSinceHire
	, DATEADD(year, 10, HireDate) AS Anniversary -- Adding years to the hire date to find work anniversary
FROM HumanResources.Employee
;

SELECT YEAR(HireDate) AS HireYear
	, COUNT(*) AS NewHires
FROM HumanResources.Employee
GROUP BY YEAR(HireDate)
;


SELECT GETDATE(); -- Returns Currect date and time
SELECT GETUTCDATE();