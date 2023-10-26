# Database-using-SQL
This is a project I made for a university assignment where I had to make a database for a fake company using 
SQL and phpMyAdmin and XAMPP. The database is called 'test' and is a SQL file because I exported the database 
from phpMyAdmin. There is also a DML (Data Manipulation) file of SQL code to insert,delete and update data in 
the database. 

Things I did well:
•	I considered one to one and one to many relationships which indicate normalisation to some degree.
•	My tables contain enough data (more than 1.8 tuples per table) which show I used correct INSERT statements.
•	I used various data types enforcing domain constraints in my database.
•	I used the ENUM keyword and the DEFAULT keyword demonstrating a good understanding of enforcing domain and user-defined constraints. 
•	My database schema contains at least 5 Primary Keys (simple and composite) indicating a good understanding of entity constraints (and a normalised database to some extent).
•	My database has a suitable number of tables for a business.

Things I need to work on:
•	One or more of my DML statements was found to be broken (this could be due to my duplicate entries for PRIMARY keys related to my order of the statements in the SQL files). I should have tested my SQL statements more.
•	I did not do enough many to many relationships for this which indicates missing steps during normalisation.
•	I should have used date or date-time data types for the projects table.
•	I should have used the CHECK keyword to enforce domain and user-defined constraints.
•	Multiple tables have no Foreign Key constraints because I missed some normalisation steps.



