_____________________________________

## Has Many RElationship
_____________________________________

In @hasmany relationship we need to create a one-directional one-to-many relationship between two models. When dataStore is enabled, it will not support referencing a model which then references the initial model via @hasOne or @hasMany 

- we can create a one-directional one-to-many relationship between two models using the @hasMany directive.


_____________________________________

# Using CompletableFuture as a Simple Future
_____________________________________

We can use CompletableFuture in two ways 🔢
 - first one :  implements the Future interface
 - second one : Future implementation but _ with additional completion logic._

1- create an instance of this class with a no-arg constructor to represent some future result.
2- hand it out to the consumers, and complete it at some time in the future using the complete method.

               you should know that calculateAsync method returns a Future instance.
               
### CompletableFuture with Encapsulated Computation Logic 

### Processing Results of Asynchronous Computations


      CompletableFuture<String> completableFuture
      = CompletableFuture.supplyAsync(() -> "Hello");

     CompletableFuture<String> future = completableFuture
       .thenApply(s -> s + " World");

     assertEquals("Hello World", future.get());


- we can pass a Runnable lambda to the thenRun method. 
- we can use an instance of the Consumer functional interface. Its single method takes a parameter and returns void.
- but the generic way is using return function.

###  Combining Futures
using _CompletableFuture API _ we have the ability to combine CompletableFuture instances in a chain of computation steps


### Difference Between thenApply() and thenCompose() 

|**thenApply()**|**thenCompose()**|
|---------------|-----------------| 
|  used  to work with a result of the previous call.             |     it use the previous stage as the argument            | 
| return a new Completion Stage.              |   return a new Completion Stage.              | 

CompletableFuture methods then it’s better to use thenCompose().
