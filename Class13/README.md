

  #  _Related Resources and Integration Testing_ 



### Working with Relationships in Spring Data REST
"how to work with relationships between entities in Spring Data REST."

####   _One-To-One ( @OneToOne )_ 
 
   
 1- ** The Data Model**
  when we write it in the class that means (the other class that we mintion it have a relationship, the tipe of relation is one from my class to on efrom other.
 The code in the first class "class Library":
 
                         @OneToOne
                         @JoinColumn(name = "address_id")
                         @RestResource(path = "libraryAddress", rel="address")
                         private Address address;
 
 
 In the the second class "class Address":
 
                         @OneToOne(mappedBy = "address")
                         private Library library;
                 

we should consider that, the @RestResource annotation is optional and can be used to customize the endpoint.

"The association name defaults to the property name and can be customized using the rel attribute of @RestResource annotation:"

                        @OneToOne
                        @JoinColumn(name = "secondary_address_id")
                        @RestResource(path = "libraryAddress", rel="address")
                        private Address secondaryAddress;
                        
                        
2. **The Repositories**
    we need to create interface for each class in this relationship, in the example (address and library ). Thats what we saied create repository.
    
    Example:
   - this repo for library:
    
                       public interface LibraryRepository extends CrudRepository<Library, Long> {}
                       
   - this repo for address:
    
                       public interface AddressRepository extends CrudRepository<Address, Long> {}
                       
                       
 3. **Creating the Resources**
   - in the first, we need to add _Library instance_.
   - before we create an association, sending a GET request to this endpoint will return an empty object.   
   -  if we want to add an association, we must first create an _Address instance_.        

4. **Creating the Associations**    
  we use it to establish the relationship by using one of the association resources. "This is done using the HTTP method PUT, which supports a media type of text/uri-list, and a body containing the URI of the resource to bind to the association."
  to remove this association we use _delete_
  
  
 ####  _______One-to-Many (@OneToMany)_ 
  

1- **The Data Model**
  we use it when we have two class one of thim are many to one from another.
  Example:
  - the first class named (book) and have this code:
  
                    @ManyToOne
                    @JoinColumn(name="library_id")
                    private Library library;
  
 - the second class is library :
  
                   @OneToMany(mappedBy = "library")
                   private List<Book> books;
 
2. **The Repositories**
    we also create repo for book class, its interface.
    
                  public interface BookRepository extends CrudRepository<Book, Long> { }
                  
3. **Creating the Resources**
    we need to create book instance using the resourse to add it in the library, which means we have many books in one library.
    - we can use _**POST**_.
    -  associate the book with the library created in the previous section by sending a _**PUT**_ request to the association resource that contains the URI of the library resource.
    -  We can verify the books in the library by using _**GET**_ method on the library's /books association resource.
    -  To remove an association, we can use the **_DELETE_** method on the association resource.


5. **Creating the Associations** 


 ####  _______Many-to-Many (@ManyToMany)_ 


1- **The Data Model**
    in the same exampe, if we create Auther class and this Auther has a relatioship with book, we can think that, **MANY** Authers have a **MANY** Books.
    - in Auther class we can write this code to built the relation.
    
                     @ManyToMany(cascade = CascadeType.ALL)
                     @JoinTable(name = "book_author", 
                     joinColumns = @JoinColumn(name = "book_id", referencedColumnName = "id"), 
                     inverseJoinColumns = @JoinColumn(name = "author_id", 
                     referencedColumnName = "id"))
                     private List<Book> books;
                     
  - in book class we need to add this code to complete this relation.

                    @ManyToMany(mappedBy = "books")
                    private List<Author> authors;
                    
    
   
2. **The Repositories**     
      we need create a repository interface to manage the Author entity:

                   public interface AuthorRepository extends CrudRepository<Author, Long> { }
                   
3. **The Association Resources**
  -  first _create_ an Author instance by sending a **_POST_** requests to the /authors collection resource.
  -  we can execute a **_GET_** request on our Author record to view the association URL.
  -  to remove an association, we can send a request with **_DELETE_** method to the URL of the association resource.


 
 ####  _______Testing the Endpoints With TestRestTemplate_ 


            
              @RunWith(SpringRunner.class)
              @SpringBootTest(classes = SpringDataRestApplication.class, 
              webEnvironment = WebEnvironment.DEFINED_PORT)
              public class SpringDataRelationshipsTest {

              @Autowired
              private TestRestTemplate template;

              private static String BOOK_ENDPOINT = "http://localhost:8080/books/";
              private static String AUTHOR_ENDPOINT = "http://localhost:8080/authors/";
              private static String ADDRESS_ENDPOINT = "http://localhost:8080/addresses/";
              private static String LIBRARY_ENDPOINT = "http://localhost:8080/libraries/";

              private static String LIBRARY_NAME = "My Library";
              private static String AUTHOR_NAME = "George Orwell";
          }

this class is example that we injects a TestRestTemplate instance and defines the constants we will use.you can show how we can test evry type of relation:
- [Testing the One-to-One Relationship](https://www.baeldung.com/spring-data-rest-relationships#1-testing-the-one-to-one-relationship)
- [Testing the One-to-Many Relationship](https://www.baeldung.com/spring-data-rest-relationships#2-testing-the-one-to-many-relationship)
- [Testing the Many-to-Many Relationship](https://www.baeldung.com/spring-data-rest-relationships#3-testing-the-many-to-many-relationship)




### _Integration Testing in Spring_
  its the very important role in the application development cycle by verifying the end-to-end behavior of a system.
  
  1- Preparation
  
  ![Figure-1](https://user-images.githubusercontent.com/97829483/159809170-6e9ff132-6920-407d-aec4-b03d57904d06.png)
  
  

  
  2- Spring MVC Test Configuration
            - Enable Spring in Tests With JUnit 5.
            - The WebApplicationContext Object.
               **_@WebAppConfiguration, which will load the web application context._**
               
   ![ServletEngine](https://user-images.githubusercontent.com/97829483/159809700-ca95f188-0751-4aa0-b59b-9687ad8e52d8.jpg)
            - Mocking Web Context Beans.
            - Verify Test Configuration
            
  3- Writing Integration Tests
      this test we will write it to test these: 
            - Verify View Name.
            - Verify Response Body.
            - Send GET Request With Path Variable.
            - Send GET Request With Query Parameters.
            - Send POST Request.
            
 4- MockMvc Limitations
  

