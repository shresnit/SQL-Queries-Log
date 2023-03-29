--Date Bucket
-- Identify the first day, month or week 



SELECT BusinessEntityID
	, HireDate
	, FORMAT(Hiredate, 'dddd') AS HireDay
	, DATE_BUCKET(WEEK, 1, HireDate) AS WeekBucketDate
	, FORMAT(DATE_BUCKET(WEEK, 1, HireDate), 'dddd') AS WeekBucketDay
	, DATE_BUCKET(MONTH, 1, HireDate) AS MonthBucketDate
	, DATE_BUCKET(YEAR, 1, HireDate) AS YearBucketDate
FROM HumanResources.Employee



-- Declaring the variable origin to date and referencing it on the above query
DECLARE @origin DATE = '2000-01-02';

SELECT BusinessEntityID
	, HireDate
	, FORMAT(Hiredate, 'dddd') AS HireDay
	, DATE_BUCKET(WEEK, 1, HireDate, @origin) AS WeekBucketDate
	, FORMAT(DATE_BUCKET(WEEK, 1, HireDate,@origin), 'dddd') AS WeekBucketDay
	, DATE_BUCKET(MONTH, 1, HireDate) AS MonthBucketDate
	, DATE_BUCKET(YEAR, 1, HireDate) AS YearBucketDate
FROM HumanResources.Employee
;