SELECT * FROM states;
SELECT * FROM regions;
SELECT state_name, population FROM states;
SELECT state_name, population FROM states ORDER BY population DESC;
SELECT state_name FROM states WHERE region_id = 7;
SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
SELECT state_name FROM states WHERE population < 1500000 AND population > 1000000;
SELECT state_name, region_id FROM states ORDER BY region_id ASC;
SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
SELECT regions.region_name, states.state_name FROM regions INNER JOIN states ON regions.id=states.region_id ORDER BY region_id ASC;

![Alt text](/schema.png)

##What are databases for?
Databases are used for storing large amounts of data and for querying said data or combining said data.

##What is a one-to-many relationship?
This represents a scenario where one piece of data is associated with many other pieces of data, but they, in a sense, belong to it.
Say you have an online store where each customer (the initial piece of data) may have multiple orders. Each order belongs to the customer,
but the customer must have a relationship to each order. Hence the customer has a one-to-many relationship with their orders.

##What is a primary key? What is a foreign key? How can you determine which is which?
The primary key is what uniquely identifies each item in a particular database, and is unique to that item within that database.
A foreign key is a key in one table that points to a primary key in another table. It allows for easily linking the data between two tables.
You can detemine which is which by looking for repetition. The primary key will never repeat itself, whereas the foreign key may have multiples,
as the foreign key may be connecting multiple items to the same item in the primary table.

##How can you select information out of a SQL database? What are some general guidelines for that?
You can select items out of an SQL database based on several different criteria. You can select all data. You can select data out of a particular
column or columns. You can select data out of particular columns based on the values within the columns. You can select data based on its 
relationship to other data from another table as long as you have an established link between the two in the form of a primary key and foreign
key.