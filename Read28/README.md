# RecyclerView 
You supply the data and define how each item looks, and the RecyclerView library dynamically creates the elements when they're needed using _RecyclerView_.


![Screenshot (656)](https://user-images.githubusercontent.com/97829483/166918994-7fbaf210-e045-4785-87d6-9eaa846148cf.png)


![Screenshot (657)](https://user-images.githubusercontent.com/97829483/166919505-143e5720-b3de-486b-b7c2-7ac723bd3f34.png)


Several different classes work together to build your dynamic list.

RecyclerView is the ViewGroup that contains the views corresponding to your data. It's a view itself, so you add RecyclerView into your layout the way you would add any other UI element.

Each individual element in the list is defined by a view holder object. When the view holder is created, it doesn't have any data associated with it. After the view holder is created, the RecyclerView binds it to its data. You define the view holder by extending RecyclerView.ViewHolder.

The RecyclerView requests those views, and binds the views to their data, by calling methods in the adapter. You define the adapter by extending RecyclerView.Adapter.

The layout manager arranges the individual elements in your list. You can use one of the layout managers provided by the RecyclerView library, or you can define your own. Layout managers are all based on the library's LayoutManager abstract class.
[
# Steps for implementing your RecyclerView ](https://developer.android.com/guide/topics/ui/layout/recyclerview#steps-for-implementing)


When you define your adapter, you need to override three key methods:
1- onCreateViewHolder(): RecyclerView calls this method whenever it needs to create a new ViewHolder. The method creates and initializes the ViewHolder and its associated View, but does not fill in the view's contents—the ViewHolder has not yet been bound to specific data.
2- onBindViewHolder(): RecyclerView calls this method to associate a ViewHolder with data. The method fetches the appropriate data and uses the data to fill in the view holder's layout. For example, if the RecyclerView displays a list of names, the method might find the appropriate name in the list and fill in the view holder's TextView widget.
3- getItemCount(): RecyclerView calls this method to get the size of the data set. For example, in an address book app, this might be the total number of addresses. RecyclerView uses this to determine when there are no more items that can be displayed.

!(example)[https://developer.android.com/guide/topics/ui/layout/recyclerview#implement-adapter] 
