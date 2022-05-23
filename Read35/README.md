__________________________________________

# Graphs
__________________________________________

its a set of nodes or vertices and edges
    ![img](https://imgs.search.brave.com/3yIP2Znp_NmD8Q2KuWLF-ywFIG8IIq3Me5DTKWQW-Ho/rs:fit:733:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5s/Y0Y1eEs4aGtGc0NT/WnYxckc0dUtRQUFB/QSZwaWQ9QXBp)


- The connection between any 2 nodes called Edgs.
- Data object that can have zero or more adjacent Vertex .
- Degree - The degree of a vertex is the number of edges connected to that vertex.

_________________________________

## Directed vs Undirected graph
_________________________________

There is tow type of graphs :
- Directed graph.
- Undirected graph.

    ![dirctAnndUndirect](https://imgs.search.brave.com/YvoSY7IoANnX23N1tLXiK5ceffpDUUpeS9CzAnaLDXk/rs:fit:793:633:1/g:ce/aHR0cDovL3BlZGlh/YS5jb20vd3AtY29u/dGVudC91cGxvYWRz/LzIwMTkvMDEvRGlm/ZmVyZW5jZS1CZXR3/ZWVuLURpcmVjdGVk/LWFuZC1VbmRpcmVj/dGVkLUdyYXBoLUNv/bXBhcmlzb24tU3Vt/bWFyeS5qcGc)
    
    "Unlike an undirected graph, a Digraph has direction. Each node is directed at another node with a specific requirement of what node should be referenced next."
    
A directed graph is a type of graph that contains ordered pairs of vertices while an undirected graph is a type of graph that contains unordered pairs of vertices. Thus, this is the main difference between directed and undirected graph.

______________________________________

## Complete vs Connected vs Disconnected
______________________________________

### Complete Graphs
    A complete graph is a graph in which each pair of graph vertices is connected by an edge.
    
   ![CompleteGraph](https://imgs.search.brave.com/BhpNHXGkNQcEDCPnv5DF9SVftnhK9wAQzHQV2YUHTRE/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5m/R2NHSTFJMVN5MVRq/SDNRWmpQQmlBSGFG/aiZwaWQ9QXBp)

### Connected
    A graph is connected if any two vertices of the graph are connected by a path.
    
  ![ConnectedGraph](https://imgs.search.brave.com/vtDb0MJUpH-AAVqcAdLHP46vd4IXMPp9MwLNVmUezYw/rs:fit:728:546:1/g:ce/aHR0cHM6Ly9pbWFn/ZS5zbGlkZXNoYXJl/Y2RuLmNvbS9ub3Rh/bWF0aGRpc2NyZXRl/Z3JhcGh0aGVvcnkt/MTExMTEwMjEzNTEy/LXBocGFwcDAxLzk1/L25vdGEtbWF0aC1k/aXNjcmV0ZS1ncmFw/aC10aGVvcnktMTEt/NzI4LmpwZz9jYj0x/MzIwOTYwOTQ2)

### Disconnected
    A graph is disconnected if at least two vertices of the graph are not connected by a path. If a graph G is disconnected, then every maximal connected subgraph of G is called a connected component of the graph G.
    
__________________________________________

## Acyclic vs Cyclic
__________________________________________

A cyclic graph has cycles meaning you can start from some node and follow a path such that you arrive at the same node you began. This is trivial for undirected graphs as a bidirectional edge can be viewed as two opposite directed edges which by themselves form a cycle. However, if you limit the path to a set of edges so no edge may be crossed once it does make undirected acyclic graphs slightly more interesting.

Acyclic graphs contain no such cycles. Directed acyclic graphs (DAGs) are worth looking into as they are quite intuitive and provide a fundamental understanding of cyclic and acyclic graph theory.

__________________________________________

## Graph Representation
__________________________________________

We represent graphs through:

- Adjacency Matrix
- Adjacency List

![adj](https://imgs.search.brave.com/gqWp2QeDkatDJjZ97Z0XNJRcJvUulT1UsGcZG7ChC9E/rs:fit:1200:720:1/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9a/VHl5WnE1NmRaQS9t/YXhyZXNkZWZhdWx0/LmpwZw)


        "a sparse graph is when there are very few connections. a dense graph is when there are many connections

        Within an adjacency matrix, an undirected graph will always be symmetric. This is not the case for a directed graph."
        
        
____________________________________

## Adjacency List 
____________________________________
    An adjacency list represents a graph as an array of linked lists. The index of the array represents a vertex and each element in its linked list represents the other vertices that form an edge with the vertex.

For Ecxalmple :

![adjlist ](https://cdn.programiz.com/cdn/farfuture/-p4ka0P4riQvs-VRZHACdhlc48nVN1iOYdZmkk8F2FA/mtime:1625029631/sites/tutorial2program/files/adjacency-list-graph.png)

We can represent this graph in the form of a linked list on a computer as shown below.

![listResult](https://cdn.programiz.com/cdn/farfuture/h2DRie2qoBNmd2liy8DRj5TDcmODcVDBUZOyoPQ5AVM/mtime:1625029639/sites/tutorial2program/files/adjacency-list-representation.png)

1- We can visually see that we are working with a collection of some sort. The visual is depicting a Linked List, but you could easily make it an array of arrays if you’d like.
2- Each index or node (depending on the data structure you choose to represent the adjacency list) will be a vertex within the graph.
3- Every time you add an edge, you will find the appropriate vertices in the data structure and add it to the appropriate location.

_________________________________________

## Traversals 
_________________________________________

- Breadth First (BFS)
- Depth First (DFS)

