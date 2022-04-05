# Spring Security Architecturetr

## Authentication and Access Control
 Spring Security has an architecture that is designed to separate authentication from authorization and has strategies and extension points for both.
 
1- **Authentication** (who are you?)
The main strategy interface for authentication is AuthenticationManager, which has only one method:

           public interface AuthenticationManager {
           Authentication authenticate(Authentication authentication)
              throws AuthenticationException;
          }
          
We can use AuthenticationManager method in three way in authenticate:
- Return an Authentication** normally with authenticated=true** if it can verify that the input represents a valid principal.
- **Throw** an AuthenticationException if it believes that the input represents an invalid principal.is a runtime exception,it is handled by an application in a generic way, depending on the style or purpose of the application.
- Return **null** if it cannot decide.

![download (1)](https://user-images.githubusercontent.com/97829483/161774339-1d19736e-6bec-4856-a48b-c5ed95ef04bf.jpg)



##Customizing Authentication Managers
The most commonly used helper is the AuthenticationManagerBuilder, which is great for setting up in-memory, JDBC, or LDAP user details or for adding a custom UserDetailsService. The following example shows an application that configures the global (parent) AuthenticationManager:

         @Configuration
          public class ApplicationSecurity extends WebSecurityConfigurerAdapter {

             ... // web stuff here

            @Autowired
            public void initialize(AuthenticationManagerBuilder builder, DataSource dataSource) {
              builder.jdbcAuthentication().dataSource(dataSource).withUser("dave")
                .password("secret").roles("USER");
            }

        }
        
If we had used an @Override of a method in the configurer, the AuthenticationManagerBuilder would be used only to build a “local” AuthenticationManager, which would be a child of the global one.

"Spring Boot provides a default global AuthenticationManager (with only one user) unless you pre-empt it by providing your own bean of type AuthenticationManager. The default is secure enough on its own for you not to have to worry about it much, unless you actively need a custom global AuthenticationManager. If you do any configuration that builds an AuthenticationManager, you can often do it locally to the resources that you are protecting and not worry about the global default."

## Authorization or Access Control
if authentication successful then move on to authorization can move

      boolean supports(ConfigAttribute attribute);
      boolean supports(Class<?> clazz);
      int vote(Authentication authentication, S object,
              Collection<ConfigAttribute> attributes);
              
              
you can use default AccessDecisionManager, which is AffirmativeBased (if any voters return affirmatively, access is granted). Any customization tends to happen in the voters, either by adding new ones or modifying the way that the existing ones work.


# Web Security 
![download (1)](https://user-images.githubusercontent.com/97829483/161774073-f632f3b2-0d0d-4d0f-b78d-29a7410bf086.png)

![download](https://user-images.githubusercontent.com/97829483/161774111-ce5c7b86-ef26-4a28-ad4a-b67eb7ad1641.jpg)

![20201217114823498](https://user-images.githubusercontent.com/97829483/161775663-d89d31a8-bd0a-4070-ae80-60bcdf96e98d.png)

"The fact that all filters internal to Spring Security are unknown to the container is important, especially in a Spring Boot application, where, by default, all @Beans of type Filter are registered automatically with the container. So if you want to add a custom filter to the security chain, you need to either not make it be a @Bean or wrap it in a FilterRegistrationBean that explicitly disables the container registration."


## Creating and Customizing Filter Chains
      @Configuration
      @Order(SecurityProperties.BASIC_AUTH_ORDER - 10)
      public class ApplicationConfigurerAdapter extends WebSecurityConfigurerAdapter {
        @Override
        protected void configure(HttpSecurity http) throws Exception {
          http.antMatcher("/match1/**")
           ...;
        }
      }
      
Add a new filter chain and order it before the fallback.
  
## Request Matching for Dispatch and Authorization
## Combining Application Security Rules with Actuator Rules


# Method Security
    @SpringBootApplication
    @EnableGlobalMethodSecurity(securedEnabled = true)
    public class SampleSecureApplication {
    }

# Working with Threads

 You can always access and manipulate the SecurityContext through static convenience methods in SecurityContextHolder, which, in turn, manipulate a ThreadLocal. The following example shows such an arrangement:

      SecurityContext context = SecurityContextHolder.getContext();
      Authentication authentication = context.getAuthentication();
      assert(authentication.isAuthenticated);

If you need access to the currently authenticated user in a web endpoint, you can use a method parameter in a @RequestMapping, as follows:

     @RequestMapping("/foo")
     public String foo(@AuthenticationPrincipal User user) {
       ... // do stuff with user
     }
     
If Spring Security is in use, the Principal from the HttpServletRequest is of type Authentication, so you can also use that directly:

     @RequestMapping("/foo")
     public String foo(Principal principal) {
       Authentication authentication = (Authentication) principal;
       User = (User) authentication.getPrincipal();
       ... // do stuff with user
     }
     
     
     
## Processing Secure Methods Asynchronously
f you want to do any background processing that calls secure methods you need to ensure that the context is propagated.

        @Configuration
        public class ApplicationConfiguration extends AsyncConfigurerSupport {

          @Override
          public Executor getAsyncExecutor() {
            return new DelegatingSecurityContextExecutorService(Executors.newFixedThreadPool(5));
          }

        }
        
        
 #Spring Auth Cheat Sheet
 Step 1: set up a user model and repo

 Step 2: create a controller for that model

 Step 3: UserDetailsServiceImpl implements UserDetailsService

gets a User from the database by username (make sure your repository has the method to make this easy!)

Step 4: ApplicationUser implements UserDetails

use IntelliJ to implement the methods; make the boolean ones all return true

 Step 5: WebSecurityConfig extends WebSecurityConfigurerAdapter

- has a UserDetailsService
- passwordEncoder bean
- configure AuthManagerBuilder
    - `auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());`
- configure HttpSecurity
    - cors? csrf?
    - matchers for URLs that are allowed
        - ensure that login and signup URLs allowed; also consider homepage etc.
    - formLogin with login page set up
    - logout

```
    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
```

 Step 6: registration page
- create it w/ form
- ensure it posts to a route your controller is ready for
- check it's saving in the DB
```
    // maybe autologin?
    Authentication authentication = new UsernamePasswordAuthenticationToken(newUser, null, new ArrayList<>());
    SecurityContextHolder.getContext().setAuthentication(authentication);
```

 Step 7: login page
- create it w/ form
- ensure it posts to the route you specified in web config
- try it out!
- add to a template w/ things about the Principal
