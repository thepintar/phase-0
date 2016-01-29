![Alt text](/week-8/imgs/allergy_schema.png)

In my schema, I have modeled a scenario in which a school is keeping track of every student and their emergency contact.<br />
I have created a seperate table with a one to one relationship which contains additional information about allergies.<br />
This is because not every child has an allergy, and in fact most of them will not. So instead of creating a table full of<br />
NULL values, I can just create a new allergy table with a one-to-one relationship.<br />
(Here I am assuming none of the students have more than one allergy. My school wouldn't accept such students.)<br />

![Alt text](/week-8/imgs/grocery_schema.png)

##What is a one-to-one database?
A one-to-one database is database which encompasses a relationship between two tables, both of which relate only to each other singularly.
The question should really be asking what a one-to-one relationship is within a database, no? Well either way, its the relationship that matters.
Each unique id corresponds to one piece of data.

##When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would use a one-to-one RELATIONSHIP within a database when you want to avoid filling the main table with NULL values.
If row-values exist which not every unique item would provide data for, it would be better to create a new table with that data,
and then connect it as a foreign key.

##What is a many-to-many database?
The many-to-many scenario comes up when multiple objects interact with multiple other objects within a schema. If some data can be connected with many different sets, and each set can be connected with many different pieces of data, you have a many-to-many scenario.

##When would you use a many-to-many database? (Think generally, not in terms of the example you created).
When you have two types of objects, say, that can interact with many iterations of each other, you would want to consider a many-to-many relationship, and connect them through a new table.

##What is confusing about database schemas? What makes sense?
Nothing is confusing about database schemas. Its apparent that they've been made as dry and clear as possible over the 40 odd years since the theory that brought life (very dry life) to them was invented. The only real complication I see currently is that in visualizing them, I have to sort of unpack the schema within my head so the list items spread sideways into columns, and then we get rolling.