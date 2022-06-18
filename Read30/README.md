____________________________________________________

# Hash Table 
____________________________________________________

In computing, a hash table, also known as hash map or dictionary, is a data structure that implements a set abstract data type, a structure that can map keys to values.
A hash table uses a hash function to compute an index, also called a hash code, into an array of buckets or slots,
**bility to store the key into this data structure, and quickly retrieve the value.**


we use it for :
1- Hold unique values
2- Dictionary
3- Library

we can search for data by create contains function it  used to check whether a particular value is being mapped by any keys present in the Hashtable and it should take O(n) 

"Hash function takes a key and returns an integer. We use the integer to determine where the key/value pair should be placed in the array. The hash code is calculated in constant time and writing to an array at one index is O(1) so the hash map has O(1) access."

![hash](https://static.javatpoint.com/ds/images/hash-table.png)


 ### we can say it has the 2 stringth :
 1- Fast lookups. Lookups take O(1)O(1) time on average.
 2- Flexible keys. Most data types can be used for keys, as long as they're hashable.
 
 ### Collisions 
 instead of storing the actual values in our array, let's have each array slot hold a pointer to a linked list holding the values for all the keys that hash to that index
 If all our keys caused hash collisions, we'd be at risk of having to walk through all of our values for a single lookup (in the example above, we'd have one big linked list). This is unlikely, but it could happen. That's the worst case.
 
 ### Internal Methods 
 1- add()
 
 2- find()
 
 3- contains()

 4- getHash()
 
 _________________________________________________
 
 # Basics of Hash Tables 
 
 _________________________________________________
 A hash table is a data structure that is used to store keys/value pairs. It uses a hash function to compute an index into an array in which an element will be inserted or searched. By using a good hash function, hashing can work well. Under reasonable assumptions, the average time required to search for an element in a hash table is O(1).

 in this [_link_]([url](https://www.hackerearth.com/practice/data-structures/hash-tables/basics-of-hash-tables/tutorial/)) you can see the good example and toturial
 about hash table and all of method in the hash table class we an need to empliment the class.
 
![example](https://he-s3.s3.amazonaws.com/media/uploads/7ea3425.jpg)


_________________________________________________________

# Hash in [WIKI]([url](https://en.wikipedia.org/wiki/Hash_table))
_________________________________________________________
![wikiex](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Hash_table_5_0_1_1_1_1_1_LL.svg/675px-Hash_table_5_0_1_1_1_1_1_LL.svg.png)
