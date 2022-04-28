# Application Fundamentals 

You can use c++,java, and kotlin to create Android app.
- **Android package** 
        - have an extention [.apk]
        - contains the contents of an Android app that are required at runtime and it is the file that Android-powered devices use to install the app.

-  **Android App Bundle**
        - with extention [.aab]
        - contains the contents of an Android app project including some additional metadata that is not required at runtime.

![Screenshot (652)](https://user-images.githubusercontent.com/97829483/165721220-479ed3c7-ca37-4ca3-8c88-3d94c0ce8791.png)


"The Android system implements the principle of least privilege"
 - It's possible to arrange for two apps to share the same Linux user ID, in which case they are able to access each other's files. To conserve system resources, apps with the same user ID can also arrange to run in the same Linux process and share the same VM. The apps must also be signed with the same certificate.
 - An app can request permission to access device data such as the device's location, camera, and Bluetooth connection. The user has to explicitly grant these permissions. For more information, see Working with System Permissions.

The rest of this document introduces the following concepts:

 - The core framework components that define your app.
 - The manifest file in which you declare the components and the required device features for your app.
 - Resources that are separate from the app code and that allow your app to gracefully optimize its behavior for a variety of device configurations.

# App components

![Main-Components](https://user-images.githubusercontent.com/97829483/165721494-fe1bbaa6-7962-4ec4-bf2e-c414b4ce38fe.jpg)
 ## Activites
 Entry point for interacting with the user.
 All  activities work together to form a cohesive user experience in the email app,but each one is independent of the others.

## Services
 is a general-purpose entry point for keeping an app running in the background for all kinds of reasons.
 service does not provide a user interface.
 
 ![Android IPC Bound Service Overview](https://user-images.githubusercontent.com/97829483/165728631-ee26bdda-eb93-48d7-8979-56372daf782a.jpg)
## Broadcast receivers
component that enables the system to deliver events to the app outside of a regular user flow, allowing the app to respond to system-wide broadcast announcements. 
 
 ![Bcr](https://image.slidesharecdn.com/6-151015024415-lva1-app6891/95/android-broadcast-receiver-3-638.jpg?cb=1477993095)
 
## Activating components
- You can start an activity or give it something new to do by passing an Intent to startActivity() or startActivityForResult() (when you want the activity to return a result).
- With Android 5.0 (API level 21) and later, you can use the JobScheduler class to schedule actions. For earlier Android versions, you can start a service (or give new instructions to an ongoing service) by passing an Intent to startService(). You can bind to the service by passing an Intent to bindService().
- You can initiate a broadcast by passing an Intent to methods such as sendBroadcast(), sendOrderedBroadcast(), or sendStickyBroadcast().
- You can perform a query to a content provider by calling query() on a ContentResolver.
 
## The manifest file
The manifest does a number of things in addition to declaring the app's components, such as the following:

- Identifies any user permissions the app requires, such as Internet access or read-access to the user's contacts.
- Declares the minimum API Level required by the app, based on which APIs the app uses.
- Declares hardware and software features used or required by the app, such as a camera, bluetooth services, or a multitouch screen.
- Declares API libraries the app needs to be linked against (other than the Android framework APIs), such as the Google Maps library.

## Declaring components
![](https://i.ytimg.com/vi/k9f1vgBThx0/maxresdefault.jpg)

## App Resurces
An Android app is composed of more than just code—it requires resources that are separate from the source code, such as images, audio files, and anything relating to the visual presentation of the app.

![](https://i.stack.imgur.com/UbsBV.png)
