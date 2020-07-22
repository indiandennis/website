---
title: Sharded Distributed Key Value Store in Go
description: Project for UCLA CS134 Distributed Systems
date: 2020-07-21
tags:
  - software
  - backend
---
### The Goal

This project was given to us in several parts over the period of the course, each building on the last. At first, we built a simple primary/backup replicated kv store, which was not very resilient or performant and depended on a resilient view service to manage state. Then, we had to implement the Paxos consensus algorithm in Go. After that, we used that Paxos implementation to create the sharded KV store. 

### Implementation

Each of the projects was split into two parts, and since we worked in a team of two this made it easy to split the work. We each mainly did one part, and worked together to fix bugs when we got stuck. I implemented the Paxos algorithm and the rebalancing distributed shardmaster, while my partner did the key/value store implementations on top of these. 

I enjoyed learning Go for this course, and I have used it on other projects since as I find it a nice balance between simple sytnax and structures and high performance compiled code with easy concurrency. I enjoyed the way the channels system enables you to think about problems, although I did not get to use it as much as I would have liked due to the structured nature of the course. 

Paxos was a challenging algorithm to implement, and we didn't even have to implement anything too complex like leader-based Paxos. I found that I learned less of the distributed computing theory and more basic software engineering from these projects, and learned more about the theory in the course. This was somewhat dissappointing to me as someone who benefits from a hands-on approach to learning.

### Conclusions

One criticism I have of the course is that much of the code for the assignments was structured for us and we did not have as much freedom as I would have liked to consider the design of our implementations. This is understandable from the point of view of having to grade so many assignments, but limits the amount we can learn from the course. I think it was an important step to learn Paxos as it is the primary example (besides Raft) of a classical consensus algorithm to compare to the decentralized distributed computing algorithms I learned in my Blockchain course. These two courses really went together well and provided many new ways for me to think about complex problems. 

Overall, I enjoyed this course, and the professor, Ravi Netravali, is one of the best I have had at UCLA. His lecture style and approach to remote learning made it one of my best courses in the first remote quarter we had.