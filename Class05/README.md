#____________________________________________________________
# Big O: Analysis of Algorithm Efficiency
  It used to  describe the efficiency of an algorithm or method it has 2 type 
 - Running Time (also known as time efficiency / complexity)
          The amount of time a function needs to complete.
 - Memory Space (also known as space efficiency / complexity)
          The amount of memory resources a function uses to store data and instructions.
          
 #### it discribe the worth case for Running time and memory space
 
   ![Big+O+Notation+Summary](https://user-images.githubusercontent.com/97829483/156296396-ad9e8107-5ae0-4348-9c3d-ff2ec95f75c4.jpg)

 
 
1.Input Size
2. Units of Measurement
3. Orders of Growth
4. Best Case, Worst Case, and Average Case





   ![OrdersOfGrowth](https://user-images.githubusercontent.com/97829483/156295715-80cfd4e6-d38c-49b1-b632-4f5dcbb3f55a.png)
 
 
   Linearithmic Complexity is used to describe a growth rate of n by lgn. This represents complexity that grows with n, but also by lgn. 
   Linearithmic functions grow faster than input size n, but not by much. 
   This can be seen in divide and conquer algorithms such as the Merge Sort have linearithmic complexity growth rates.
   If an algorithm has Linear Complexity, the size of our inputs ‘n’ will directly determine the amount of Memory Space used and Running Time length.
   This is a very common efficiency and is usually used to denote functions with loops, or often algorithms that use recursion.
 
### Worst Case, Best Case, Average Case


  ![Worst,+Average,+Best+Case](https://user-images.githubusercontent.com/97829483/156296142-875ebe3b-8c5b-40e7-8402-00acaab8d9a0.jpg)


- Worst Case: The efficiency for the worst possible input of size n
- Best Case: The efficiency for the best possible input of size n.
- Average Case: The efficiency for a “typical” or “random” input of size n.  

Big O: The worst case analysis of algorithm efficiency.
Running Time: The amount of time required for an algorithm to complete.
Memory Space: The amount of memory resources required for an algorithm to complete.
Input Size: Represented by the variable n, the total size of values used as parameters in an algorithm.
Big Omega: The best case analysis of algorithm efficiency.
Big Theta: The typical or random case used for analysis of algorithm efficiency.


# ____________________________________________________________
# Linked Lists
  sequence of Nodes that are connected/linked to each Node references the next Node in the link.


  
 ![0_Fvegw0-7XnUbpXRq](https://user-images.githubusercontent.com/97829483/156297264-0eb228c1-06cd-4626-b9e2-cd1df0c0ac02.jpg)

  
It has 2 Type:
 -  Singly 
          Singly refers to the number of references the node has. A Singly linked list means that there is only one reference, and the reference points to the Next node in a linked list.
 -  Doubly 
          Doubly refers to there being two (double) references within the node. A Doubly linked list means that there is a reference to both the Next and Previous node.

![download](https://user-images.githubusercontent.com/97829483/156297028-2c7efb60-ae3b-4148-9a2d-866a611a33a1.png)


# ____________________________________________________________
## Linear data structures
![Linear](https://user-images.githubusercontent.com/97829483/156297968-049fe605-795d-40e8-b1ec-c213428edb4c.jpeg)

#### Memory management
One byte could live somewhere, while the next byte could be stored in another place in memory altogether! Linked lists don’t need to take up a single block of memory; instead, the memory that they use can be scattered throughout.

### Big O :
Worst Case :**O(n^2)**
Normal Case :**O(n)**
Best Case : **O(1)**


