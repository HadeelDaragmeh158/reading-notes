_____________________________

# AUTHENTICATION
_____________________________


The Amplify CLI helps you to create and configure the auth category with an authentication provider.


in this read you can  learn about 
- **[Configure Auth Category]([url](https://docs.amplify.aws/lib/auth/getting-started/q/platform/android/#configure-auth-category))** and tere is a steps you should follows to do it correctlly.


- After that you need to **[Install Amplify Libraries]([url](https://docs.amplify.aws/lib/auth/getting-started/q/platform/android/#install-amplify-libraries))**

- Initialize Amplify Auth : you can do this step by apply these lines 

                   
                   // Add this line, to include the Auth plugin.
                    Amplify.addPlugin(new AWSCognitoAuthPlugin());
                    Amplify.configure(getApplicationContext());
                    
                    
- Then we can now check the **[current auth session]([url](https://docs.amplify.aws/lib/auth/getting-started/q/platform/android/#check-the-current-auth-session))**.                    
____________________________________

# Sign In
____________________________________
1- Register a user
    each user has oun username and secret passowrd to regester your app. and here you should let user enter the Email to do second step.

2-  confirm the user. 
    confirmation code will be sent to the email id provided during sign up.
    
    
         Confirm signUp succeeded 
         //this message tell you if the sign up flow is complete
         
3- Sign in a user :
 After you pass in Regester you should sign in as user, your data will be in database, After the user enters the username and password you can start the sign in flow  
 
           Amplify.Auth.signIn(
            "username",
            "password",
            result -> Log.i("AuthQuickstart", result.isSignInComplete() ? "Sign in succeeded" : "Sign in not complete"),
            error -> Log.e("AuthQuickstart", error.toString())
        );
        
        
## Multi-factor authentication 
"If you create or update an SMS MFA configuration for your Cognito user pool, the Cognito service will send a test SMS message to an internal number in order to verify your configuration. You will be charged for these test messages by Amazon SNS."

