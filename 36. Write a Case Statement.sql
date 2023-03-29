-- Write a CASE Statement

--Not a function but similar to IIF function
--evalute input and returns values based on specific condition

--CASE <SourceColumn> WHEN <condition> THEN <output value>... ELSE <output value> END AS Alias

SELECT ProductModelID
	, ProductDescriptionID
	, CultureID
	, CASE CultureID
		WHEN 'ar' THEN 'Arabic'
		WHEN 'en' THEN 'English'
		WHEN 'es' THEN 'Spanish'
		WHEN 'fr' THEN 'French'
		WHEN 'he' THEN 'Hebrew'
		WHEN 'th' THEN 'Thai'
		WHEN 'zh-cht' THEN 'Chinese'
		ELSE 'Undefined'
	END AS CultureName
FROM Production.ProductModelProductDescriptionCulture
;

SELECT BusinessEntityID
	, MaritalStatus
	, CASE MaritalStatus
		WHEN 'M' THEN 'Married'
		WHEN 'S' THEN 'Single'
		END AS MaritalStatusText
	, CASE SalariedFlag
		WHEN 0 THEN 'Paid Hourly Wage'
		WHEN 1 THEN 'Paid Annual Wage'
	END AS PaymentDescription
FROM HumanResources.Employee
;