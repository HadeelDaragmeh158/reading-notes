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
