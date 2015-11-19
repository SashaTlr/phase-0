##Release 2

###One-to-One Schema

![One-to-One Schema](https://github.com/SashaTlr/phase-0/blob/master/week-8/imgs/one_to_one.png "One-to-One Schema")

##Release 4

###Many-to-Many Schema
![Many-to-Many Schema](https://github.com/SashaTlr/phase-0/blob/master/week-8/imgs/many_to_many.png "Many-to-Many Schema")

##Release 6
###What is a one-to-one database?

A one-to-one database is when there are two sets of data that have a singular relationship with each other, but where fields on one data set could be null.

###When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You would use a one-to-one database to break up data sets with singular relationships, where one dataset's size is less than or equal to the other data set, i.e. it could still be valid for the main table to not have a match in the second dataset.

###What is a many-to-many database?

A many-to-many database is where the datasets can contain multiple units from one dataset can belong to the other dataset and vice versa.

###When would you use a many-to-many database? (Think generally, not in terms of the example you created).

A many-to-many database is where there are multiple links between datasets, going in both directions and not just one (in which case you would want a one-to-many database relationship).

###What is confusing about database schemas? What makes sense?
It's pretty clear although from a storage and speed perspective, unclear what's the optimal way of designing a schema.