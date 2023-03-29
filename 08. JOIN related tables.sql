SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Products;

--See the names, order details and products they ordered

SELECT Customers.FirstName, -- Selecting the columns names from different table
		Customers.LastName,
		Orders.OrderDate,
		Orders.Quantity,
		Products.Name,
		Products.RetailPrice
FROM Customers --Inner join to display match records of different tables
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID -- ON is used to relate the common column betwen two tables
INNER JOIN Products ON Orders.ProductID = Products.ProductID
;


--Table Joins and Relationship

--Inner Join : Default Join - Returns matching records in Table A and B
--Left Join : Returns every records in Table A and matching records in Table A and B
--Right Join: Returns matching records in Table A and B and all records in Table B
--Full Outer Join: Returns matching records from Table A and B and Every records in Table A and Table B