____________________________

# Intent Filters
____________________________
in the first intent object carries information that the Android system uses to determine which component to start (such as the exact component name or component category that should receive the intent), plus information that the recipient component uses in order to properly perform the action (such as the action to take and the data to act upon).

## [Add **intent-filter**]([url](https://developer.android.com/training/basics/intents/filters#AddIntentFilter)) 
  it allows other apps to start your activity, "In order to properly define which intents your activity can handle, each intent filter you add should be as specific as possible in terms of the type of action and data the activity accepts."
  
  1- Action 
      One of the platform-defined values such as ACTION_SEND or ACTION_VIEW.
  2- Data 
      Description of the data associated with the intent.
  3- Category
      All implicit intents are defined with CATEGORY_DEFAULT by default.
  
  
  "you can declare which criteria your activity accepts by declaring each of them with corresponding XML elements nested in the <intent-filter> element."
  
## [Handle the Intent in Activity]([url](https://developer.android.com/training/basics/intents/filters#HandleIntent))   
   you can read the Intent that was used to start, in OnCreate method or onStart() you should retrieve the Intent to start activity using getIntent() method.
  
  
## [Return a Result]([url](https://developer.android.com/training/basics/intents/filters#ReturnResult))
  to return Intent for activity you shoud call setResult.
  
  "Note: There's no need to check whether your activity was started with startActivity() or startActivityForResult(). Simply call setResult() if the intent that started your activity might expect a result. If the originating activity had called startActivityForResult(), then the system delivers it the result you supply to setResult(); otherwise, the result is ignored.

"
 ___________________________________________
  
 # Intents and Intent Filters 
 ___________________________________________
  
  
  you can reuist an actions from another comonents with intent, intents facilitate communication between components in several ways

 - Starting an activity
 - Starting a service
 - Delivering a broadcast
 
  
## Intent types

  - Explicit intents
  - Implicit intents
  
 ![Implicit intents](https://developer.android.com/images/components/intent-filters_2x.png)
  
 ## Building an intent
  _ **primary information in Intent is**: _
   - **Component name**: The name of the component to start.
   - **Action** : to took place and is being reported.
   - **Data**: The URI (a Uri object) that references the data to be acted on and/or the MIME type of that data. The type of data supplied is generally dictated by the intent's action. 
   - **Category**: 
   - **Extras**: to carry additional information required to accomplish the requested action.
   - **Flags**
  
 ##### [Example explicit intent](https://developer.android.com/guide/components/intents-filters#ExampleExplicit)
 ##### [Example implicit intent](https://developer.android.com/guide/components/intents-filters#ExampleSend)
  
 ![](https://developer.android.com/images/guide/components/nested-pending-intent.svg)
  
 ## Receiving an implicit intent
  ##### [Example filters](https://developer.android.com/guide/components/intents-filters#ExampleFilters)

## Using a pending intent
  
## Intent resolution 
