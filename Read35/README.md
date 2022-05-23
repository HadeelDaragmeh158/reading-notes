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
