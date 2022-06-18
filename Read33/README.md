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

1- create an instance of this class with a no-arg constructor to represent some future result
2- hand it out to the consumers, and complete it at some time in the future using the complete method.

