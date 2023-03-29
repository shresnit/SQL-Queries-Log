--IIF logical funtion

--The logival function IIF will evaluate a condition and return one value if the condition is true 
--and different value if the condition is false

--Similar to If... Then.. function

--IIF(logical condition, 'Condition Met Statement', 'Condition false statement'

-- Find out which employee has met the target of 2 million dollar and which have not
SELECT BusinessEntityID
	, SalesYTD
	, IIF(SalesYTD > 2000000, 'Met Sales Goal', 'Has not met goal') AS Status
FROM Sales.SalesPerson;



-- Bucketing the results of IIF
SELECT IIF(SalesYTD > 2000000, 'Met Sales Goal', 'Has not met goal') AS Status
	, COUNT(*)
FROM Sales.SalesPerson
GROUP BY IIF(SalesYTD > 2000000, 'Met Sales Goal', 'Has not met goal')
;




