# SQL-Queries-Log
Here are some of the SQL queries I have been using in my projects

# CREATING A TABLE

CREATE TABLE TableName(
  ColName [DataType] [IDENTITY(1,1) NOT NULL],
  ColName [DataType] NOT NULL
 );
 
Example

CREATE TABLE ProductCategories(
	CategoryID int IDENTITY(1,1) NOT NULL,
	CategoryName varchar(25) NOT NULL,
	CategoryAbbreviation char(2) NOT NULL
); 
