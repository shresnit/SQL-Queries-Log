--Return distinct rows with EXCEPT

-- EXCEPT
	--Merge two query result sets together
	--Only returns distinct rows from the first query that are not present in the second


-- 
SELECT BusinessEntityID
FROM Person.Person		--Table with customer and employee identity number
WHERE PersonType <> 'EM' -- Removing employees from the table


SELECT BusinessEntityID
FROM Sales.PersonCreditCard; --Tables of persons who have credit cards

--Now we want to return persons from Person.Person who do not have credit cards
--EXCEPT helps us to return people who do not have credit card


SELECT BusinessEntityID
FROM Person.Person		--Table with customer and employee identity number
WHERE PersonType <> 'EM' -- Removing employees from the table

EXCEPT

SELECT BusinessEntityID
FROM Sales.PersonCreditCard; --Tables of persons who have credit cards


--We can use the exact same result by using a table join

SELECT Person.BusinessEntityID
	FROM Person.Person LEFT JOIN Sales.PersonCreditCard
		ON Person.BusinessEntityID = PersonCreditCard.BusinessEntityID
	WHERE Person.PersonType <> 'EM' AND PersonCreditCard.CreditCardID IS NULL
;




