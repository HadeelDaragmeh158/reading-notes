_______________________________________

# Intro to Serverless
_______________________________________
 a cloud computing execution model where the cloud provider dynamically manages the allocation and provisioning of servers. 
 A serverless application runs in stateless compute containers that are event-triggered, ephemeral (may last for one invocation), and fully managed by the cloud provider.
 Pricing is based on the number of executions rather than pre-purchased compute capacity, isn’t it the ideal framework for that project you have been planning since a
 long time? Well, go ahead do it.
 it is allow users to communicate with an application and access its business logic, but managing servers takes considerable time and resources. 
  
  
  ![img](https://imgix.datadoghq.com/img/knowledge-center/serverless-architecture/how-serverless-functions-work.png?auto=format&fit=max&w=847)
 
 
 ![trs](https://cdn.hackernoon.com/hn-images/1*x_v5NRC3TTMt1MaYl1gMUg.jpeg)
 
 
 Although serverless architecture eliminates the need for server management, 
 there’s still a steep learning curve, especially if you’re chaining multiple functions together to create complex workflows in an application.
 It can therefore be helpful to familiarize yourself with these fundamental serverless terms:

    1- Invocation:  A single function execution.

    2- Duration: The time it takes for a serverless function to execute.

    3- Cold Start: The latency that occurs when a function is triggered for the first time or after a period of inactivity.

    4- Concurrency Limit: The number of function instances that can run simultaneously in one region, as determined by the cloud provider. A function will be throttled if it exceeds this limit.

    5- Timeout:The amount of time that a cloud provider allows a function to run before terminating it. Most providers set a default timeout and a maximum timeout.

One of the most popular serverless architectures is Function as a Service (FaaS), where developers write their application code as a set of discrete functions. Each function will perform a specific task when triggered by an event, such as an incoming email or an HTTP request
FaaS are similar to the functions you’re used to writing in programming languages, small, separate, units of logic that take input arguments, operate on the input and return the result.

![iml](https://cdn.hackernoon.com/hn-images/1*TIrjN7EjLUVJmJ6YvHR7Dg.png)


_______________________________________

# AWS Amplify Kool-Aid
_______________________________________
Tools that help developers to bulid  quickly and easily build full-stack applications on AWS, with the flexibility to leverage the breadth of AWS services as your use cases evolve. 

AWS Amplify offers the User Interface elements for cloud-connected workflows, CLI toolchain and code libraries.

To integrate with other AWS services, these libraries can be employed mutually or independently without needing to adjust the UI of the existing app. In simple terms, the combination of an existing frontend app with Amplify can be done by adding a few code lines.

There are few approaches when uniting an actual frontend application with AWS Amplify, like doing a complete backend rebuild that can be done by using the Amplify toolchain to rebuild resources.
_______________________________________

# GraphQL Intro 
_______________________________________

In this article we will setup database tables in the code by using @model and you should know it will add id automatically as a primary key to the database table. but you can
configure a primary key by using @primaryKey 


notic that:

              Amazon DynamoDB is a key-value and document database that delivers single-digit millisecond performance at any scale but making it work for your access patterns requires a bit of forethought. DynamoDB query operations may use at most two attributes to efficiently query data. The first query argument passed to a query (the hash key) must use strict equality and the second attribute (the sort key) may use gt, ge, lt, le, eq, beginsWith, and between. DynamoDB can effectively implement a wide variety of access patterns that are powerful enough for the majority of applications.


