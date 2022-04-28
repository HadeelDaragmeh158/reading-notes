
# Lifecycle of a task and its back stack
![](https://intellitect.com/wp-content/uploads/2018/04/DevOps-infinity-graphic.png)

![](https://developer.android.com/images/fundamentals/diagram_backstack.png)

## Back press behavior for root launcher activities
These activities are unique because they act as entry points into your app from the app launcher and are used to start a task.

System behavior on **Android 12** and higher
The system moves the activity and its task to the background instead of finishing the activity. This behavior matches the default system behavior when navigating out of an app using the Home button or gesture.

## Background and foreground tasks
The user uses the Home button or gesture, then starts a new app from the app launcher.

- When the Home screen appears, Task A goes into the background. When the new app starts, the system starts a task for that app (Task B) with its own stack of activities.

- After interacting with that app, the user returns Home again and selects the app that originally started Task A.

- Task A comes to the foreground—all three activities in its stack are intact and the activity at the top of the stack resumes. At this point, the user can also switch back to Task B by going Home and selecting the app icon that started that task (or by selecting the app's task from the Recents screen).

# Managing Tasks
To interrupt the normal behavior of activities. You can do these things and more, with attributes in the <activity> manifest element and with flags in the intent that you pass to startActivity().

# The principal <activity> attributes you can use are:

- taskAffinity
- launchMode
- allowTaskReparenting
- clearTaskOnLaunch
- alwaysRetainTaskState
- finishOnTaskLaunch
  
#### the principal intent flags you can use are:

- FLAG_ACTIVITY_NEW_TASK
- FLAG_ACTIVITY_CLEAR_TOP
- FLAG_ACTIVITY_SINGLE_TOP
  
# Write to shared preferences
  To write to a shared preferences file, create a SharedPreferences.Editor by calling edit() on your SharedPreferences.
  Pass the keys and values you want to write with methods such as putInt() and putString(). Then call apply() or commit() to save the changes
  apply() changes the in-memory SharedPreferences object immediately but writes the updates to disk asynchronously.
  Alternatively, you can use commit() to write the data to disk synchronously. But because commit() is synchronous, you should avoid calling it from your main thread because it could pause your UI rendering.
  Read from shared preferences
  To retrieve values from a shared preferences file, call methods such as getInt() and getString(), providing the key for the value you want, and optionally a default value to return if the key isn't present.

  
  
