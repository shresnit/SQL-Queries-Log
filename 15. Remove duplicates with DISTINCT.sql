--Remove duplicates with DISTINCT

SELECT *
FROM Person.Address;

SELECT City
FROM Person.Address;

--There are more than 19000 rows containing the manu duplicate values for city
--If you want to know how many cities are there you can use DISTINCT to remove duplicate values

SELECT DISTINCT City
FROM Person.Address
ORDER BY City; 


--However we have to be careful because the city name can be same of different geographical location
--So we have to ensure that by adding stateprovinceID variable on that

SELECT DISTINCT City, StateProvinceID
FROM Person.Address
ORDER BY City;