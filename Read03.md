# Maps, primitives, File I/O
## __________________________


### Primitives and Reference
java variables has two type:
- Primitives types (int, boolean,double..)
- Reference types  (Integer, Boolean,Double..)
      There are three kinds of reference types:
        1- class types.
        2- Array types.
        3- Interface types.
   

### Exceptions
  Is an **Event ** that occurs during the execution of a program that disrupts the normal flow of instructions.
  
##### A program can catch exceptions by using a combination of the try, catch, and finally blocks.

- The **try** block identifies a block of code in which an exception can occur.
- The **catch** block identifies a block of code, known as an exception handler, that can handle a particular type of exception.
- The **finally** block identifies a block of code that is guaranteed to execute, and is the right place to close files, recover resources, and otherwise clean up after the code enclosed in the try block.
   
 **try statement should contain at least one catch block or a finally block and may have multiple catch blocks.**
 
 ![try-catch-block](https://user-images.githubusercontent.com/97829483/155930641-41dea79d-4a52-4e4a-954d-1b57e7dffd21.png)
 
 
 ### Scanning
Scanner objects are useful for breaking down formatted input into tokens and translating individual tokens according to their data type. and used to get user input from different souecce ike stream,files... etc.
