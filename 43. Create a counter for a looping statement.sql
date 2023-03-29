-- Create a Counter for a looping statement

--SQL variables can be used as counters in a looping statement 
--to control how many times a batch of commands will execute.

DECLARE @Counter INT = 1;
WHILE @Counter <= 3
	BEGIN
		SELECT @Counter AS CurrentValue
		SET @Counter += 1
	END;

 --Now we can use this to construct a statement that'll execute multiple queries 
 --in the database and change the parameters each time.

 DECLARE @Counter INT = 1;
 DECLARE @Product INT = 710;

 WHILE @Counter <=3
 BEGIN
	SELECT ProductID
		, Name
		, Color
		, ListPrice
	FROM Production.Product
	WHERE ProductID = @Product
	SET @Counter += 1
	SET @Product += 10
 END
 ;



