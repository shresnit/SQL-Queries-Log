--Understanding Null Values

SELECT WorkOrderID,
	ScrappedQty,
	ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID <> NULL; -- Using Operator with NULL doesn't work


SELECT WorkOrderID,
	ScrappedQty,
	ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID IS NOT NULL; 

SELECT WorkOrderID,
	ScrappedQty,
	ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID IS NULL; 


-- Replacing null values with some values using ISNULL function
SELECT WorkOrderID,
	ScrappedQty,
	ISNULL(ScrapReasonID,99)
FROM Production.WorkOrder
; 
