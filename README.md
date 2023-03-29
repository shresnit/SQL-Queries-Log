# SQL-Queries-Log
Here are some of the SQL queries I have been using in my projects

# CREATING A TABLE

CREATE TABLE TableName( <br/>
  ColName [DataType] [IDENTITY(1,1) NOT NULL],  <br/>
  ColName [DataType] NOT NULL  <br/>
 );  <br/>
 
Example  <br/>

CREATE TABLE ProductCategories(  <br/>
	CategoryID int IDENTITY(1,1) NOT NULL,  <br/>
	CategoryName varchar(25) NOT NULL,  <br/>
	CategoryAbbreviation char(2) NOT NULL  <br/>
);  <br/>

# INSERTING ROWS values in a Table  <br/>

INSERT INTO TableName (ColName, ColName) <br/>
    	VALUES ([Value], [Value]), <br/>
		([Value], [Value]) <br/>
; <br/>

Example <br/>
INSERT INTO ProductCategories (CategoryName, CategoryAbbreviation) <br/>
	VALUES ('Blueprints', 'BP'), <br/>
		('Drone Kits', 'DK'), <br/>
;  <br/>
 

# Retrieve Reccords with SELECT

SELECT * FROM [TableName] <br/>

SELECT ColName, <br/>
	ColName <br/>
FROM TableName <br/>

Example <br/>
