AWS Amplify is an increasingly popular full stack development toolkit that relies on AWS, but should you be using it? Further, what are the pros and cons you should know about?

AWS Amplify is a powerful toolkit developers use to build full stack applications that directly integrate with the cloud. Using it, developers can rapidly setup, test, launch, and scale production ready applications with minimal time spent focusing on the details.

In this article, I’m going to introduce you to AWS Amplify. I’m going to go more into depth in terms of what Amplify is and the features it offers. Further, we’ll discuss how it can be used to rapidly build and deploy applications. Finally, we’ll touch on some pros and cons as to why you should and should not consider using Amplify.

By the end of this article, you’ll have a solid understanding of what AWS Amplify is and whether it may be a good toolkit choice for your next project.

So let’s get started

Prefer a video format? Check out my Youtube video on AWS Amplify here.

What is AWS Amplify?
AWS Amplify was officially announced in November of 2017 and quickly became popular among full stack developers. Looking to compete with other rapid development, full stack hosting products such as Google Firebase and Netlify, Amplify offered something these other product’s didn’t: direct feature integration with AWS’ powerful backend services.

I like to think of AWS Amplify as a kind of glue service. It really doesn’t offer any particular core functionality besides helping you integrate with other AWS services, albeit it does it in a very different way.

In essence, AWS Amplify is a toolchain that helps you build and deploy entire applications very quickly. Typically, this Amplify is mainly aimed at full stack applications, but you can also use it just for its ability to generate a backend.

When setting up your project, you have a whole bunch of different configurations to choose from as seen in the image below:


Languages/Platforms supported by AWS Amplify. From front-end focused to mobile specific, Amplify helps you pick the right tool for the job.
For example, for web applications, Javascript, React, or Angular are obvious choices. And in terms of mobile specific, React Native, Android, and iOS platforms are other good options.

In terms of usage, we primarily use AWS Amplify as a Command Line Interface or CLI tool, however, there is a limited feature UI that allows you to do some administration tasks for some day to day activities. I like to think of the Admin UI as a nice way to visualize the components you’re adding to your application.

Now the main strength of Amplify is that it quickly lets you add thigs like Storage, Authentication, Monitoring, and PubSub functionalities. Now you don’t need to know what Amplify is provisioning behind the scenes to add these functions. For example, if you decide to use something like Storage, you may be provisioning one or more components from a multitude of AWS Services without actually knowing about it.

I tend to think Amplify is an attractive tool because it allows developers to add application functionality without having to know what AWS services to use to achieve that functionality. This way, developers can spend more of their time focusing on application code as opposed to fumbling with infrastructure, deployment pipelines, and scaling considerations.

All of these features may seem magical, but behind the scenes Amplify is leveraging a relatively old product to quickly let you add new components, a service called AWS CloudFormation. CloudFormation is an Infrastructure as Code service that allows you to define template files that instruct AWS which components you need for your application, and let AWS do the heavy lifting of provisioning those services.

Amplify simply leverages CloudFormation to define templates for the components you add, and uses it to deploy those resources to the cloud. If you’re interested in learning more about AWS CloudFormation, I have a whole article on it here.

Lets take a look at some of the application integration features AWS Amplify offers, and understand whats happening behind the scenes.

An Example Of Amplify Features
Below is an image of the wide variety of application integration offers. Things like Authentication, Datastores, Functions, and CI/CD offerings. This is a big list of impressive things you can do with Amplify, but behind the scenes there’s no mystery ere. I’ve done my best to highlight some of the technologies used behind the scenes.


The services AWS Amplify uses behind the scenes to offer its wide range of cloud integrated functions.
Note: Links below are to my YouTube videos on service overviews.

For example, to achieve user Authentication and Authorization, we rely on Amazon Cognito.

To host APIs, either GraphQL or REST/HTTP based, we use either AWS Appsync or API Gateway, respectively.

For raw object storage including asset files for your web applications, or deployment executables, we rely on the popular Amazon S3.

For asynchronously communicate with other microservices, aka PubSub, we use a combination of Amazon Simple Notification Service (SNS) and Simple Queue Service (SQS).

For analytics, we utilize Amazon Pinpoint.

For domain registration and DNS modifications, we use Amazon Route 53.

To build dashboards, examine logs, and add alarms we use Amazon Cloudwatch.

For Serverless Compute we use AWS Lambda.

And finally, for DataStores, we generally rely on the popular NoSQL Database Amazon DynamoDB.

I’m not going to run through every single service here, but I think you get the idea. Basically, Amplify is an abstraction that sits ontop of other core services, letting you quickly add functions without needing to understand which service is being used behind the scenes.

Usage
So we learned a bit about what Amplify does, now lets learn about what using it actually looks like.

Command Line Interface (CLI)
Primarily, you’re going to be interacting with Amplify through the CLI. The CLI is a library that you can install to your terminal to interact with the library.

To configure a new project, we use the amplify configure and amplify init commands. Amplify will ask you some basic questions about your application configuration including language, framework, name, and other details.

After initially setting up our application, we’re free to start adding some application components.

A critical component for almost any application is a api. To add one, we use the command amplify add api to provision our new api. We’re prompted with a bunch of questions related to our API including technology (graphql or REST/HTTP), name, API keys, and some other details related to APIs.

Running this command in your terminal also produces a bunch of application code to be used in your API. From here, you can go ahead and start modifying your code to do something unique to your application.


An example workflow for configuring an amplify project, adding an application API, and deploying it out to AWS.
When you’re done, you can run a deploy command to launch those components into AWS Cloud – magic!

Looking to get started with Amplify? Check out my Step by Step Tutorial here.

Admin UI
Another option for interacting with Amplify is through the administration UI. As imaged below the Admin UI is quite a pretty thing, but generally, you likely won’t be using it too much.

The Admin UI does have some neat features such as the Data Model Studio. Using it, you can easily add Data Models including their fields and types. Further, you can add relationships between them similar to building out an ER diagram for a database schema. The cool part is that Amplify will generate model files that you can use in your application code. The other cool part is that by defining relationships between models, Amplify will automatically generate the correct database indexes to support relationship style lookup patterns – pretty neat!

Generally, I like to think of Admin UI as the portal to get a physical view of the components your building through the console. A lot of us are visual learners, including myself, and so we can benefit from this alot to really graps the pieces we’re building. However, you’ll more often that not be generating your application components using the CLI.

Now we know a little bit about how we interact with Amplify. Lets dig in now to some pros and cons of using it.

Pros and Cons of Amplify
Pro # 1 – Getting Started Quickly
Amplify lets you deploy get started with new projects quickly. You can easily run commands to generate application components quickly to get familiar with their workings. You can also spend more of your time focusing on the business problems you’re trying to solve instead of worrying about the details of managing your system.

Along the same vein, prototyping is another huge benefit. Since you’re using CloudFormation behind the scenes which tracks all the resources Amplify creates, its really easy to tear down all those components with a single command. This means building out toy applications to get some experience with the functional components is really easy, and also allows you to tear them down quickly.

Pro # 2 – Fast Development Cycles
Since Amplify is CLI based, it allows for some very fast development cycles. Developers can take advantage of the toolkit to rapidly experiment with new changes and deploy them out to the cloud. Gone are the days of waiting minutes or even hours waiting for your application to hit the test or production environment – this can now happen in seconds.

Pro # 3 – Shielding From the Complexity of AWS
AWS is a really huge ecosystem with hundreds of different services. Many people want to get started with AWS, but get intimidated and don’t know where to start.

Amplify flips this problem on its head. Instead of starting with a problem, and trying to figure out which service(s) to solve that problem, Amplify offers a solution oriented mindset. By offering direct functions or features as components such as Storage, Authentication, Analytics, and others, developers don’t need to care about which AWS services are being used behind the scenes, they generally just worry about the end product.

This can be a really great thing – it lets developers hit the ground running and worry less about the intricacies of AWS.


Pros and Cons of using AWS Amplify.
Con # 1 – You Don’t ‘Really’ Learn AWS
Pro # 3 can also be considered a con. A consequence of being shielded from the complexity of AWS is the fact that you don’t really learn AWS. So much about being a great AWS focused developer is understanding the lower level components and how they inter-operate – Amplify is in complete contrast to this principle.

If you’re thinking you’re going to start learning AWS, and then going ahead and using amplify right out of the gate, then I got bad news for you, cause you’re probably not gonna learn how to use AWS, you’re just going to learn how to use amplify.

For some, this may not be a problem since they just want to rapidly develop. For others that are looking to get exposed in detail to AWS services and also learn how launch your production application, you may want to look at other choices such as CDK.

Con # 2 – Collaboration Can Be Frustrating
In my brief experience with Amplify, I always felt like it catered to flying-solo developers. Folks that have an idea and want to get it out the door quickly.

That being said, Amplify can be used as a solution that allows for many developers to work together on the same project. Buyer beware though, collaboration can be a bit frustration in terms of deployment collisions. AWS does offer some useful workflows for a collaborative development environment though, however it was still a bit frustrating trying to collaborate with another dev and stepping on eachother’s changes.

Con # 3 – Stepping Outside The Box
One of the problems with Amplify is that you’re kind of at the mercy of the product features offered through AWS Amplify. If theres a particular AWS service that you’re interested in using in your Amplify project and its not supported, you may need to manage it separately.

As was pointed out by a commentor of my YouTube video on AWS Amplify, there is a way around this using Cloud Development Kit to add custom components (watch this video). However, this may be very challenging for a beginner to comprehend.

Con #4 – Potential For Surprise Bills
This is by far the most scary part (atleast for me) about using Amplify. Because services are being provisioned behind the scenes, there is the possibility you can add a functionality that relies on a service with cost implications. This is especially relevant for those of you using accounts that are outside of the AWS free-tier.

This means there is the potential of surprise bills. I want to emphasize here that you should really understand the cost models of services being used by amplify for each functionality prior to adding it to your project. This will help you avoid surprise bills. I also suggest setting up a billing alert a small dollar threshold ($5 or so should be fine) to get early warnings if your application starts incurring some unexpected costs. If you want to set this up, I have a video on it here.

I do want to point out though that Amplify does use quite a bit of serverless components to drive its functions. This means you’ll largely be using a pay-per-use model. This mitigates some of the surprise bill concerns, but doesn’t completely eliminate it.

I wouldn’t let this point stop you from using Amplify, because surprise bills can be easily avoided. But just make sure you take the right precautions.

Closing Thoughts
Amplify is an extremely fascinating product to me. Its quite different in the way AWS advertises it and who I think the target audience is. Even the documentation page goes against the grain in terms of AWS style conventions – presenting a much more ‘modern’ look akin to what you would see on modern open source projects (as seen below).


The documentation apge for AWS amplify. It goes against the grain of the typical styling for AWS documentation in other services.
I do think that Amplify’s advantages outweigh the cons, but it depends on who’s asking. On one hand, its a fantastic toolkit that helps you build applications with rich functionalities quickly. On the other hand, it can act as an inhibitor for learning the fundamentals of AWS.

All in all, I suggest you give Amplify a try to experiment, or even as a toolkit to launch your next project. I think you’ll be pleasantly surprised.
