# Application Fundamentals 

You can use c++,java, and kotlin to create Android app.
- **Android package** 
        - have an extention [.apk]
        - contains the contents of an Android app that are required at runtime and it is the file that Android-powered devices use to install the app.

-  **Android App Bundle**
        - with extention [.aab]
        - contains the contents of an Android app project including some additional metadata that is not required at runtime.


"The Android system implements the principle of least privilege"
 - It's possible to arrange for two apps to share the same Linux user ID, in which case they are able to access each other's files. To conserve system resources, apps with the same user ID can also arrange to run in the same Linux process and share the same VM. The apps must also be signed with the same certificate.
 - An app can request permission to access device data such as the device's location, camera, and Bluetooth connection. The user has to explicitly grant these permissions. For more information, see Working with System Permissions.

The rest of this document introduces the following concepts:

 - The core framework components that define your app.
 - The manifest file in which you declare the components and the required device features for your app.
 - Resources that are separate from the app code and that allow your app to gracefully optimize its behavior for a variety of device configurations.

# App components
