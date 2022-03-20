# Accessing Data with JPA
in this article it talke about how i can build an application that uses Spring Data JPA to store and retrieve data in a relational database.
you can start from scratch or that uses Spring Data JPA to store and retrieve data in a relational database.

![Screenshot (587)](https://user-images.githubusercontent.com/97829483/159148683-2fc9e940-eb2f-40d0-aeb2-bb665146b440.png)

in this link you can read some example of code and the explain of it like 
1- Define a Simple Entity
2- Create Simple Queries
3- Create an Application Class
4- Build an executable JAR


# Baeldung: Comparing repositories

There is different kinds of Spring Data repository interfaces and their functionality. We'll touch on:

- CrudRepository
- PagingAndSortingRepository
- JpaRepository

##### simple Product entity:
      @Entity
      public class Product {

          @Id
          private long id;
          private String name;

          // getters and setters
      }
      
##### implement a simple operation – find a Product based on its name:

    @Repository
    public interface ProductRepository extends JpaRepository<Product, Long> {
        Product findByName(String productName);
    }
    
    
###  CrudRepository 
Its interface that can inherit the methods from it. It provides all basic query abstractions needed in an application.

CRUD functionality:

1- save(…) – save an Iterable of entities. Here, we can pass multiple objects to save them in a batch
2- findOne(…) – get a single entity based on passed primary key value
3- findAll() – get an Iterable of all available entities in database
4- count() – return the count of total entities in a table
5- delete(…) – delete an entity based on the passed object
6- exists(…) – verify if an entity exists based on the passed primary key value


### PagingAndSortingRepository
its interface , this interface is provide a method findAll

### JpaRepository
Again, let's look at each of these methods in brief:

1- findAll() – get a List of all available entities in database
2- findAll(…) – get a List of all available entities and sort them using the provided condition
3- save(…) – save an Iterable of entities. Here, we can pass multiple objects to save them in a batch
4- flush() – flush all pending task to the database
5- saveAndFlush(…) – save the entity and flush changes immediately
6- deleteInBatch(…) – delete an Iterable of entities. Here, we can pass multiple objects to delete them in a batch


![SpringData](https://user-images.githubusercontent.com/97829483/159149135-5c87add7-8cd0-4ff9-b3b7-2b709b9d4f75.jpg)


