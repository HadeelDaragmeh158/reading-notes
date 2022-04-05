# Spring Boot and OAuth2

"The samples are all single-page apps using Spring Boot and Spring Security on the back end. They also all use plain jQuery on the front end. But, the changes needed to convert to a different JavaScript framework or to use server-side rendering would be minimal."
all this samples are implemented using the native OAuth 2.0 support in Spring Boot.

there are several sampels like:
1- Simpl : basic app with home page and unconditional login via Spring Boot’s OAuth 2.0 configuration properties 
2- click: adds an explicit link that the user has to click to login.
3- logout: adds a logout link as well for authenticated users.
4- two-providers: adds a second login provider so the user can choose on the home page which one to use.
5- Custom-error: adds an error message for unauthenticated users
 
 
 importent things :
 - SocialApplication : you can run your app by open this class and press on the run button (its like a main )
 - http://localhost:8080 : after that you can go to the browser and put this link to show your output app.
 - mvn spring-boot:run : using this command in termenal to show all output from your app.
  
                "The apps all work on localhost:8080 because they’ll use OAuth 2.0 clients registered with GitHub and Google for that address.
                To run them on a different host or port, you need to register your apps that way. There is no danger of leaking your credentials
                beyond localhost if you use the default values. But, be careful what you expose on the Internet, and don’t put your own app 
                registrations in public source control."
 
 ![spring-boot-security-login-jwt-example-h2-database-flow](https://user-images.githubusercontent.com/97829483/161865245-b4ae7746-b4cc-4412-8a0e-cf0f23227001.png)
 
 ### Single Sign On With GitHub
 -  create a Spring Boot application using this _[Link](https://start.spring.io)_
 -  create index.html in the src/main/resources/static folder. like this 
 
          <!doctype html>
          <html lang="en">
          <head>
              <meta charset="utf-8"/>
              <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
              <title>Demo</title>
              <meta name="description" content=""/>
              <meta name="viewport" content="width=device-width"/>
              <base href="/"/>
              <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/>
              <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
              <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
          </head>
          <body>
            <h1>Demo</h1>
            <div class="container"></div>
          </body>
          </html>
          
"The final dependency is the webjars "locator" which is provided as a library by the webjars site. Spring can use the locator to locate static assets in webjars without needing to know the exact versions (hence the versionless /webjars/** links in the index.html). The webjar locator is activated by default in a Spring Boot app, as long as you don’t switch off the MVC autoconfiguration.

With those changes in place, you should have a nice looking home page for your app."

### Securing the Application with GitHub and Spring Security
you can add Spring Security as a dependency to make your app more secure.

        <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-oauth2-client</artifactId>
        </dependency>
        
By adding that, it will secure your app with OAuth 2.0 by default.

"	If you are working through this section with the sample application, be sure to clear your browser cache of cookies and HTTP Basic credentials. The best way to do that for a single server is to open a new private window."

If you look in the browser tools and follow the network traffic for all the hops, you will see the redirects back and forth with GitHub, and finally you’ll land back on the home page with a new Set-Cookie header. T
his cookie is a token for your authentication details for Spring applications.

## Add a Welcome Page
 you have the option of either server-side or client-side rendering to render content on the condition that the user is authenticated
 
          "It’s not a great idea to return a whole OAuth2User in an endpoint since it might contain information you would rather not reveal to a browser client. "
          
 ##Add a Logout Button 
 we build a button that allows users, to use it when they want to log out.
 we can build it in tow sides:
 - client side 
 - Adding local Endpoint 

### Log in 
you can adding client regestration 

      "The final path in the URL should match the client registration id in application.yml."

then after you build it you can add a a user information in the database 

## Adding Error Page and Error message 

[Link](https://spring.io/guides/tutorials/spring-boot-oauth2/#:~:text=the%20provider%E2%80%99s%20API.-,Conclusion,-We%20have%20seen)
