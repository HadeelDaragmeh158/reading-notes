# RecyclerView 
You supply the data and define how each item looks, and the RecyclerView library dynamically creates the elements when they're needed using _RecyclerView_.


!()[https://imgs.search.brave.com/fKH5asRlAnJdUJ4VAkRhtkcDMXtQYPvJEexsKB7Xe8M/rs:fit:1200:1125:1/g:ce/aHR0cHM6Ly9pMi53/cC5jb20vd3d3LmFu/ZHJlYXNqYWtsLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAx/OC8wMS9BbmRyb2lk/LVJlY3ljbGVyVmll/dy1GbG93LnBuZz9z/c2w9MQ]

!()[https://imgs.search.brave.com/0ig4mPTQbJwqnjef4q1plNcNPU8Rwz5nq77MBXGxvLQ/rs:fit:1024:576:1/g:ce/aHR0cHM6Ly93d3cu/Zmx1dHRlcnRwb2lu/dC5jb20vd3AtY29u/dGVudC91cGxvYWRz/LzIwMjEvMDgvcmVj/eWNsZXJ2aWV3LWlu/LWFuZHJvaWQtMTAy/NHg1NzYucG5n]

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

[example](https://developer.android.com/guide/topics/ui/layout/recyclerview#implement-adapter) 
