#8.4 Introduction to Database Schemas and SQL (medium)

##Release 5:

**1) sqlite> SELECT * FROM states;**
id          state_name  population_density  population  region_id
----------  ----------  ------------------  ----------  ----------
1           Alabama     96.45               4822023     5
2           Alaska      1.1111              731449      10
3           Arizona     57.05               6553255     8
4           Arkansas    56.43               2949131     7
5           California  244.2               38041430    9
...

**2) sqlite> SELECT * FROM regions;**
id          region_name
----------  -----------
1           New England
2           Mid-Atlanti
3           South Atlan
4           East North
5           East South
6           West North
7           West South
8           Mountain
9           Pacific
10          North Pacif
11          Tropical Pa

**3) sqlite> SELECT state_name, population FROM states;**
state_name  population
----------  ----------
Alabama     4822023
Alaska      731449
Arizona     6553255
Arkansas    2949131
California  38041430
Colorado    5187582
Connecticu  3590347
Delaware    917092
...

**4) sqlite> SELECT state_name, population FROM states ORDER BY population DESC;**

|state_name | population|
|---------- | ----------|
|California | 38041430|
|Texas      | 26059203|
|New York   | 19570261|
|Florida    | 19317568|
|Illinois   | 12875255|
|Pennsylvan | 12763536|
|Ohio       | 11544225|
|...|

**5) sqlite> SELECT state_name FROM states WHERE region_id = 7;**
state_name
----------
Arkansas
Louisiana
Oklahoma
Texas

**6) sqlite> select state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;**
state_name  population_density
----------  ------------------
Iowa        54.81
Oklahoma    55.22
Arkansas    56.43
Arizona     57.05
Mississipp  63.5
Minnesota   67.14
Vermont     67.73
West Virgi  77.06
Missouri    87.26
...

**7) sqlite> SELECT state_name FROM states where population BETWEEN 1000000 AND 1500000;**
state_name
----------
Hawaii
Maine
Montana
New Hampsh
Rhode Isla

**8) sqlite> SELECT state_name, region_id FROM states ORDER BY region_id ASC;**
state_name   region_id
-----------  ----------
Connecticut  1
Maine        1
Massachuset  1
New Hampshi  1
Rhode Islan  1
Vermont      1
New Jersey   2
New York     2
Pennsylvani  2
Delaware     3
Florida      3
...

**9) sqlite> SELECT region_name FROM regions WHERE region_name LIKE '%Central%';**
region_name
------------------
East North Central
East South Central
West North Central
West South Central

**10) sqlite> SELECT regions.region_name, states.state_name FROM states JOIN regions ON states.region_id = regions.id ORDER BY regions.id ASC;**
region_name  state_name
-----------  -----------
New England  Connecticut
New England  Maine
New England  Massachuset
New England  New Hampshi
New England  Rhode Islan
New England  Vermont
Mid-Atlanti  New Jersey
Mid-Atlanti  New York
Mid-Atlanti  Pennsylvani
South Atlan  Delaware
South Atlan  Florida
South Atlan  Georgia
South Atlan  Maryland
...

##Release 6:

![Closet DB Schema](https://github.com/SashaTlr/phase-0/blob/master/week-8/database-intro/Closet_DB.png "Cher's Closet")

##Release 7:

###What are databases for?
Databases are used to store large amounts of data into several 2D tables, which can then be queried to pull out relevant data.
###What is a one-to-many relationship?
A one-to-many relationship is where one entry or row of a table can be linked to several entries or rows in other tables. A relational database is useful in that it allows you to break down the data into separate tables, preventing you from having to duplicate rows of information for one-to-many relationships.
###What is a primary key? What is a foreign key? How can you determine which is which?
The primary key is the unique ID for each row of data. The foreign key is the key that links to a field in another table, and may not be unique to each row in the primary table.
###How can you select information out of a SQL database? What are some general guidelines for that?
When selecting data out of a SQL database, the most important requirements are to indicate which fields are to be extracted using SELECT, which tables to query using WHERE, and how the tables are linked using JOIN.