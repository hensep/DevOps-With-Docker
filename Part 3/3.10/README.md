# Exercise 3.10
Do all or most of the optimizations from security to size for one other Dockerfile you have access to, in your own project or for example the ones used in previous "standalone" exercises.

Please document Dockerfiles both before and after.

## Solution
I optimized my own Hello World project written in go by changing to golang:1.23-alpine version and using a scratch image. The size decreased from 1.27GB to 3.44MB!

## Image sizes before and after
hello-world-go                               latest            5d7929af9941   11 minutes ago   1.27GB
hello-world-go-optimized                     latest            2593a1442b10   5 minutes ago    3.44MB