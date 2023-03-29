--Return Random Records with NewID

-- Many Statistical analysis operate on a significant subset or sample of records
-- Needs unbiased random sample records

--NEWID  >> helps to select random records

SELECT TOP 10 WorkOrderID
	, NEWID() AS NewID
FROM Production.WorkOrder
ORDER BY NewID
;
