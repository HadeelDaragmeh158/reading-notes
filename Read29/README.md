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
