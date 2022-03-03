# _________________________________________________
# Inheritance And Interfaces


OOP is one of the most fundamental programming concepts. Let’s explore the four main OOP concepts in Java and discuss how each works.

## 1- **Object **
Real-world objects share two characteristics: They all have state and behavior.Also Software Object share two characteristics: They all have state and behavior

![Screenshot (513)](https://user-images.githubusercontent.com/97829483/156498407-4bb7255a-8d86-4586-97af-c5474d177420.png)


## 2- **Class **
 blueprint or prototype from which objects are created. it has aproperties and methods.
 
 ## 3- **Inheretance **
 it is used to organize and structure your software. it is like a class inheriting the properties and methods from another one. let's say child inherit from parent.
 in java we use Extend to inheret class or interface.
in class Chiled  The inherited fields can be used directly, just like any other fields, you can declare a field in the subclass with the same name as the one in the 
superclass, thus hiding it (not recommended),you can declare new fields in the subclass that are not in the superclass,the inherited methods can be used directly as 
they are , and so on.

Types of inheritance in java
1- Single
2- Multilevle
3- Hierarchal
4- Multiple
5- Hybrid

- Class: A class is a group of objects which have common properties. It is a template or blueprint from which objects are created.
- Sub Class/Child Class: Subclass is a class which inherits the other class. It is also called a derived class, extended class, or child class.
- Super Class/Parent Class: Superclass is the class from where a subclass inherits the features. It is also called a base class or a parent class.
- Reusability: As the name specifies, reusability is a mechanism which facilitates you to reuse the fields and methods of the existing class when you create a new class. You can use the same fields and methods already defined in the previous class.
 
 **inheritance is simple but powerful **
 
 
 ## 4- **interface **
 
       interface Bicycle {

          //  wheel revolutions per minute
          void changeCadence(int newValue);

          void changeGear(int newValue);

          void speedUp(int increment);

          void applyBrakes(int decrement);
      }
 is defined as an abstract type used to specify the behavior of a class. An interface in Java is a blueprint of a class. A Java interface contains static constants and abstract methods.
 - Interfaces specify what a class must do and not how. It is the blueprint of the class.
 - An Interface is about capabilities like a Player may be an interface and any class implementing Player must be able to (or must implement) move(). So it specifies a set of methods that the class has to implement.
 - If a class implements an interface and does not provide method bodies for all functions specified in the interface, then the class must be declared abstract.
 - A Java library example is Comparator Interface. If a class implements this interface, then it can be used to sort a collection.
 
 ### Interfaces as APIs
 An application programming interface (API), in the context of Java, is a collection of prewritten packages, classes, and interfaces with their respective methods, fields and constructors. 
 
 ![Screenshot (515)](https://user-images.githubusercontent.com/97829483/156501463-f045ad54-740a-40c9-906e-bc033fce5a78.png)

 
 
 ## 5- **Package **
 is a group of similar types of classes, interfaces and sub-packages.
 
 
 
 ![download (1)](https://user-images.githubusercontent.com/97829483/156500572-77939f1c-9f66-4034-a2bf-2000e5c46b7b.png)




 
 

 
      
