# High-level HTTP
HTTP is a protocol for fetching resources such as HTML documents.

1- Local Processing:
    local processing  depend on the application making the request. After that the browser serch on the cash memory about this IP if it
  

If the cache lookup fails then your beowser will stop DNS using UDP3,

![fetching_a_page](https://user-images.githubusercontent.com/97829483/158046170-00eb8f7e-4df6-4cbb-a861-4fa792c89a1e.png)

the browser need the hostman and IP, thin it will search in cache recently requested URLs, the operating system’s cache of recent queries, your router’s cache, and your DNS cache.   

2- Resolve an IP
  if the first request fails to return an address then its failovers. If fail is happen,DNS request will firs off via your browser using UDP3.
  
3- Establish a TCP Connection
  client has an IP address and can using HTTP
  
![1_4SEvcz6KvyaqOqBpJABTBg](https://user-images.githubusercontent.com/97829483/158550288-20886864-4057-4b19-8ca6-6b774771bb09.png)


## Step 4: Send an HTTP Request
  - request line: is a line that indicates the HTTP method, the resource being requested, and the protocol version.
  - request header: is made up of pairs in the form name:value <CR><LF>. Two consecutive <CR><LF> pairs indicate the end of the header section, it contains the domain and port that the request is being sent to (domain.com:8080).
    
     server receives the request, processes it, and finds the resource being requested, it generates an HTTP response.Once the response is generated, the server responds to the request. At the TCP layer, the client receives the first data packet, the first byte of which should contain the HTTP response header. 
    
## Step 5: Tearing Down and Cleaning Up
![23-TCP-Four-Way-Handshake](https://user-images.githubusercontent.com/97829483/158553052-ea0554df-1f94-4129-bf57-6ad45966aa35.jpg)

" Once the response has been fully delivered, the client sends a FIN packet at the TCP level, to which the server responds with an ACK, and then generally sends a FIN of its own, which the client responds to with its own ACK signal. ", after processing the four-way handshake the browser starts processing the received data according to its type and renders it. which means that we finally see what we are looking for in our browser.


