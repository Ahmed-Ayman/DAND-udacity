#  notes and summaries.
intro and SQL

started 11:00 pm 21 September 2017.

* first term : python , data analysis libs , sql , stats and prob.
* second term : data wrangling, data exploration , data visualization with Tableau.

slack , office hours , mentor , career lessons and projects.
Data scientist :
1. make decisions from the data.
2. code to get inshights
their toolkit
1. math and stats
2. sql and sql like (hadoob).

<hr>
the first project : global temperature.

the scientists collect data from the air and the ocean surfaces.
there are 4 data sets .. two from the US (NASA GISS .. NOAA)one from UK and one from Japan (JMA).
<hr>

why DB

* Data integrity (a lot of attributes).
* fast.
* shared entities (Access controls to access concurrently).
DB you can think of it as a lot of spreadsheats!
* each row is a transaction, person etc.
* each column is a data pertaining to a particular aspect of one of the rows.
* all are the same Data type.

Statement :
* not sentences
* they are being used to make queries and manipulate data.
Formatting Your Queries
* Capitalization (the reserved words)
* underscores
* use white spaces to make it clear.
SELECT , FROM
LIMIT
ORDER BY (ascending) you can add DESC to make it descending.
WHERE clause (= , != , > , < , >= , <= ).
non numeric should be in single quote 'value'

## derived  column  as 'descriptive name'
a column created from a combinations of some existed columns.

## logical operators :

* Like : used inside the where clause , and it requires the wild cards like %pattern%.
* AND & BETWEEN :  WHERE column > 6 AND column < 10   |||  WHERE column BETWEEN 6 AND 10
* OR : 
* NOT : not in or like... the complement event
* IN : more than condition  where account_id IN (1000,1001);
