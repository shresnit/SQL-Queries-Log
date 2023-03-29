-- Return Common rows with INTERSECT

-- INTERSECT
	-- When you want to find rows that are identical between two queries

	SELECT ProductID
	FROM Production.ProductProductPhoto

	INTERSECT			-- Returns rows with common ProducID between table

	SELECT ProductID
	FROM Production.ProductReview;


--Same result by INNER JOIN using disticnt in select statement

	SELECT DISTINCT ProductProductPhoto.ProductID
	FROM Production.ProductProductPhoto 
		INNER JOIN Production.ProductReview
		ON ProductProductPhoto.ProductID = ProductReview.ProductID;
	;
		


