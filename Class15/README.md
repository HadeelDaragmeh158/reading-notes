# Trees
ervry tree has root, chiled, leaves,adge and  height.


![binary_tree](https://user-images.githubusercontent.com/97829483/160327834-d7889a24-f8a3-4882-84f4-e385ae42753c.jpg)

- Node - A Tree node is a component which may contain its own values, and references to other nodes
- Root - The root is the node at the beginning of the tree
- K - A number that specifies the maximum number of children any node may have in a k-ary tree. In a binary tree, k = 2.
- Left - A reference to one child node, in a binary tree
- Right - A reference to the other child node, in a binary tree
- Edge - The edge in a tree is the link between a parent and child node
- Leaf - A leaf is a node that does not have any children
- Height - The height of a tree is the number of edges from the root to the furthest leaf

## Traversals

<img width="790" alt="145_transverse" src="https://user-images.githubusercontent.com/97829483/160327956-6c894c48-cdbb-44ae-809a-21444e033aee.png">

### Depth First
its start from the root, whin it work as pre order , from left when it work as In order and from right when it work as the post.
- Pre-order: root >> left >> right
- In-order: left >> root >> right
- Post-order: left >> right >> root
- 
![1_YIX0wriN5SemynPCQ26LIA](https://user-images.githubusercontent.com/97829483/160328728-5dacbde6-8444-4ad6-9aaf-7d88115e665b.jpeg)

![slide_3](https://user-images.githubusercontent.com/97829483/160328307-80d2e803-ef74-47d5-9965-5e48248ed056.jpg)

"The program will look for both a root.left and a root.right. Both will return null, so it will end the execution of that method call
D will pop off of the call stack and the root will be reassigned back to B
This is the heart of recursion: when we complete a function call, we pop it off the stack and are able to continue execution through the previous function call"
Notice the similarities between the three different traversals above. The biggest difference between each of the traversals is when you are looking at the root node.

## Breadth First 
Breadth first traversal iterates through the tree by going through each level of the tree node-by-node.

![1_VM84VPcCQe0gSy44l9S5yA](https://user-images.githubusercontent.com/97829483/160328768-2f87c3d1-eb2b-43fd-a6ab-3fd0010daad3.jpeg)

![Breadth-First-Search-3](https://user-images.githubusercontent.com/97829483/160328916-4b21c06e-4813-4257-b1db-a19f25ae4f32.jpg)

# Binary Tree Vs K-ary Trees
## K-ary Trees
If Nodes are able have more than 2 child nodes, we call the tree that contains them a K-ary Tree. In this type of tree we use K to refer to the maximum number of
children that each Node is able to have.
![slide_11](https://user-images.githubusercontent.com/97829483/160329161-698d9a99-57de-405d-8c8c-3af4a3e0d9e7.jpg)

![image](https://user-images.githubusercontent.com/97829483/160329643-4a8d0ced-80e7-4955-80d6-8c0cba02c184.png)
We will still start at the root Node, and we will add it to our queue
### Adding a node
One strategy for adding a new node to a binary tree is to fill all “child” spots from the top down. To do so, we would leverage the use of breadth first traversal.
During the traversal, we find the first node that does not have all its children filled, and insert the new node as a child. We fill the child slots from left to
right.


## pseudocode
                  Input : preorder[] = {1, 2, 5, 6, 7, 3, 8, 9, 10, 4}
                  k = 3
                  Output : Postorder traversal of constructed 
                           full k-ary tree is: 5 6 7 2 8 9 10 
                           3 4 1 
                           Tree formed is:         1
                                               /   |   \
                                             2     3    4
                                            /|\   /|\
                                           5 6 7 8 9 10

                  Input : preorder[] = {1, 2, 5, 6, 7, 3, 4}
                          k = 3 
                  Output : Postorder traversal of constructed 
                           full k-ary tree is: 5 6 7 2 4 3 1
                           Tree formed is:        1
                                               /  |  \
                                             2    3   4
                                            /|\   
                                           5 6 7
                                           
                                           
### Big O
worst case : O(n)
best case  : O(log n)
Time Complexity:O(N)
Auxiliary Space :O(N).

## Binary Tree
n a BST, nodes are organized in a manner where all values that are smaller than the root are placed to the left, and all values that are larger than the root are placed to the right.
each node has 2 child at most.
Searching a BST can be done quickly, because all you do is compare the node you are searching for against the root of the tree or sub-tree. If the value is smaller, you only traverse 
the left side. If the value is larger, you only traverse the right side.
we can use while loop. We cycle through the while loop until we hit a leaf, or until we reach a match with what we’re searching for.
![image](https://user-images.githubusercontent.com/97829483/160330309-d31116ff-9cff-4c29-888e-e4044df1ad5c.png)

## pseudocode
                    Procedure binary_search
                       A ← sorted array
                       n ← size of array
                       x ← value to be searched

                       Set lowerBound = 1
                       Set upperBound = n 

                       while x not found
                          if upperBound < lowerBound 
                             EXIT: x does not exists.

                          set midPoint = lowerBound + ( upperBound - lowerBound ) / 2

                          if A[midPoint] < x
                             set lowerBound = midPoint + 1

                          if A[midPoint] > x
                             set upperBound = midPoint - 1 

                          if A[midPoint] = x 
                             EXIT: x found at location midPoint
                       end while

                    end procedure

### Bid o
- Insertion: O(n).
- Deletion: O(n).
- Searching: O(n).




