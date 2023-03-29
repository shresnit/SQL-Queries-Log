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
