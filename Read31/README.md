# What is AWS Amplify
AWS Amplify is a powerful toolkit developers use to build full stack applications that directly integrate with the cloud. It doesn’t offer any particular core functionality besides helping you integrate with other AWS services, albeit it does it in a very different way. a toolchain that helps you build and deploy entire applications very quickly. 


You have a different configurations to choose,when setting up your project.

![img](https://i0.wp.com/www.beabetterdev.com/wp-content/uploads/2021/09/image-27.png?resize=800%2C466&ssl=1)

"Main strength of Amplify is that it quickly lets you add thigs like Storage, Authentication, Monitoring, and PubSub functionalities. Now you don’t need to know what       Amplify is provisioning behind the scenes to add these functions."


# Amplify Features
- Authentication
- Datastores
- Functions
- CI/CD offerings

![img](https://i0.wp.com/www.beabetterdev.com/wp-content/uploads/2021/09/image-28.png?resize=800%2C492&ssl=1)

# Usage
- Command Line Interface (CLI)
     The CLI is a library that you can install to your terminal to interact with the library.
     
1- we use the [_amplify configure_] and [_amplify init_] commands. to **Configure new project**  it will sind you some questions about app configuration and the language you will use.

2- we use the command [_amplify add api_] to provision our new **API**

![img](https://i0.wp.com/www.beabetterdev.com/wp-content/uploads/2021/09/image-29.png?resize=800%2C289&ssl=1)


# Admin UI
Another option for interacting with Amplify is through the administration UI. it have some fetures like [Data Model Studio].
By using Data Model you can add Data Models including their fields and types,and you can add relationships between them.
you can define relationships between models.

# Pros and Cons of Amplify 
PROS:
1 – **Getting Started Quickly**
Amplify lets you deploy get started with new projects quickly. You can easily run commands to generate application components quickly to get familiar with their workings. You can also spend more of your time focusing on the business problems you’re trying to solve instead of worrying about the details of managing your system.

Along the same vein, prototyping is another huge benefit. Since you’re using CloudFormation behind the scenes which tracks all the resources Amplify creates, its really easy to tear down all those components with a single command. This means building out toy applications to get some experience with the functional components is really easy, and also allows you to tear them down quickly.

2– **Fast Development Cycles**
Since Amplify is CLI based, it allows for some very fast development cycles. Developers can take advantage of the toolkit to rapidly experiment with new changes and deploy them out to the cloud. Gone are the days of waiting minutes or even hours waiting for your application to hit the test or production environment – this can now happen in seconds.

3– **Shielding From the Complexity of AWS**
AWS is a really huge ecosystem with hundreds of different services. Many people want to get started with AWS, but get intimidated and don’t know where to start.

Amplify flips this problem on its head. Instead of starting with a problem, and trying to figure out which service(s) to solve that problem, Amplify offers a solution oriented mindset. By offering direct functions or features as components such as Storage, Authentication, Analytics, and others, developers don’t need to care about which AWS services are being used behind the scenes, they generally just worry about the end product.

![img](https://i0.wp.com/www.beabetterdev.com/wp-content/uploads/2021/09/image-31.png?resize=800%2C352&ssl=1)


 1 – **You Don’t ‘Really’ Learn AWS**
Pro # 3 can also be considered a con. A consequence of being shielded from the complexity of AWS is the fact that you don’t really learn AWS. So much about being a great AWS focused developer is understanding the lower level components and how they inter-operate – Amplify is in complete contrast to this principle.

If you’re thinking you’re going to start learning AWS, and then going ahead and using amplify right out of the gate, then I got bad news for you, cause you’re probably not gonna learn how to use AWS, you’re just going to learn how to use amplify.

For some, this may not be a problem since they just want to rapidly develop. For others that are looking to get exposed in detail to AWS services and also learn how launch your production application, you may want to look at other choices such as CDK.

 2 – **Collaboration Can Be Frustrating**
In my brief experience with Amplify, I always felt like it catered to flying-solo developers. Folks that have an idea and want to get it out the door quickly.

That being said, Amplify can be used as a solution that allows for many developers to work together on the same project. Buyer beware though, collaboration can be a bit frustration in terms of deployment collisions. AWS does offer some useful workflows for a collaborative development environment though, however it was still a bit frustrating trying to collaborate with another dev and stepping on eachother’s changes.

3 – **Stepping Outside The Box**
One of the problems with Amplify is that you’re kind of at the mercy of the product features offered through AWS Amplify. If theres a particular AWS service that you’re interested in using in your Amplify project and its not supported, you may need to manage it separately.

4 – **Potential For Surprise Bills**
This is by far the most scary part (atleast for me) about using Amplify. Because services are being provisioned behind the scenes, there is the possibility you can add a functionality that relies on a service with cost implications. This is especially relevant for those of you using accounts that are outside of the AWS free-tier.

This means there is the potential of surprise bills. I want to emphasize here that you should really understand the cost models of services being used by amplify for each functionality prior to adding it to your project. This will help you avoid surprise bills. I also suggest setting up a billing alert a small dollar threshold ($5 or so should be fine) to get early warnings if your application starts incurring some unexpected costs.

