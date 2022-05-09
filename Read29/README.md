# Save data in a local database using Room 
we use it to cache relevant pieces of data so that when the device cannot access the network, the user can still browse that content while they are offline.
we need to use alot of thing to save local data because that , we used Room instead of using the SQLite APIs directly.


## [Setup](https://developer.android.com/training/data-storage/room#setup) 
in the link you can see the code to setup.

## Primary components
there are 3 component for the room 
1- database class
2- Data entities 
3- Data access objects (DAOs) 

"The database class provides your app with instances of the DAOs associated with that database. In turn, the app can use the DAOs to retrieve data from the database as instances of the associated data entity objects. The app can also use the defined data entities to update rows from the corresponding tables, or to create new rows for insertion. "

![](https://imgs.search.brave.com/skd3dRga5jYHX1V1DOw9vFfBhAZOGaXOJgiYUUi6l0k/rs:fit:819:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5s/cl9zLVNNLTY0T3V2/eGh5R21RMkd3SGFF/UyZwaWQ9QXBp)

## Sample implementation 
**Data entity**

              @Entity
              public class User {
                  @PrimaryKey
                  public int uid;

                  @ColumnInfo(name = "first_name")
                  public String firstName;

                  @ColumnInfo(name = "last_name")
                  public String lastName;
              }

[**Data access object (DAO)**](https://developer.android.com/training/data-storage/room#dao)

The class must be annotated with a @Database annotation that includes an entities array that lists all of the data entities associated with the database.
The class must be an abstract class that extends RoomDatabase.
For each DAO class that is associated with the database, the database class must define an abstract method that has zero arguments and returns an instance of the DAO class.


[**Database**](https://developer.android.com/training/data-storage/room#database)
The class must be annotated with a @Database annotation that includes an entities array that lists all of the data entities associated with the database.
The class must be an abstract class that extends RoomDatabase.
For each DAO class that is associated with the database, the database class must define an abstract method that has zero arguments and returns an instance of the DAO class.


# Defining data using Room entities 
Each entity corresponds to a table in the associated Room database, and each instance of an entity represents a row of data in the corresponding table.
**That means you can use Room entities to define your database schema without writing any SQL code.**

## Anatomy of an entity
                @Entity
                public class User {
                    @PrimaryKey
                    public int id;

                    public String firstName;
                    public String lastName;
                }

Room uses the class name as the database table name, by default but you can change it.
**Table and column names in SQLite are case-insensitive.**

## Define a primary key
after created your database you need a primary key, room entity must define a primary key.

                @PrimaryKey
                public int id;
 
[**Define a composite primary key**](https://developer.android.com/training/data-storage/room/defining-data#composite-key)

Room provides several other options for defining FTS-backed entities, including result ordering, tokenizer types, and tables managed as external content. For more details about these options, see the FtsOptions reference.Sometimes, certain fields or groups of fields in a database must be unique. You can enforce this uniqueness property by setting the unique property of an @Index annotation to true.

## [Include AutoValue-based objects](https://developer.android.com/training/data-storage/room/defining-data#autovalue)

# Define relationships between objects 
Because SQLite is a relational database,ou can define relationships between entities.with Two possible approaches:
1- **Intermediate data class**
2- **Multimap return types**

# Define one-to-one relationships
1- create a class for each of your two entities. One of the entities must include a variable that is a reference to the primary key of the other entity.
"you must first model the one-to-one relationship between the two entities. To do this, create a new data class where each instance holds an instance of the parent entity and the corresponding instance of the child entity. Add the @Relation annotation to the instance of the child entity, with parentColumn set to the name of the primary key column of the parent entity and entityColumn set to the name of the column of the child entity that references the parent entity's primary key."
2- add a method to the DAO class that returns all instances of the data class that pairs the parent entity and the child entity. This method requires Room to run two queries, so add the @Transaction annotation to this method to ensure that the whole operation is performed atomically.

# Define one-to-many relationships
1- create a class for each of your two entities.
2- add a method to the DAO class that returns all instances of the data class that pairs the parent entity and the child entity. This method requires Room to run two queries, so add the @Transaction annotation to this method to ensure that the whole operation is performed atomically.

# Define many-to-many relationships 
it like above.

# **Define nested relationships**
in the first you need to do the first relation between 2 classes or tabls, then, define a data class that represents this relationship, create another data class that models the relationship between another table from your set and the first relationship class, "nesting" the existing relationship within the new one.


# Accessing data using Room DAOs 
There are two types of DAO methods that define database interactions:

1- Convenience methods that let you insert, update, and delete rows in your database without writing any SQL code.
2- Query methods that let you write your own SQL query to interact with the database.

## Convenience methods
1- [Insert](https://developer.android.com/training/data-storage/room/accessing-data#convenience-insert)
      you can define methods that insert their parameters into the appropriate table in the database. 
2- [Update](https://developer.android.com/training/data-storage/room/accessing-data#convenience-update)
      you can define methods that update specific rows in a database table.
3- [delete](https://developer.android.com/training/data-storage/room/accessing-data#convenience-delete)
      define methods that delete specific rows from a database table. 

## Query methods
**[SELECT](https://developer.android.com/training/data-storage/room/accessing-data#simple-queries)**

## Special return types
DAOs can return PagingSource objects for use with Paging 3.
[Link for examples ](https://developer.android.com/training/data-storage/room/accessing-data#paging-integration)
