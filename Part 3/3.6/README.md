# Exercise 3.6
Return now back to our frontend and backend Dockerfile.

Document both image sizes at this point, as was done in the material. Optimize the Dockerfiles of both app frontend and backend, by joining the RUN commands and removing useless parts.

After your improvements document the image sizes again.

# Image sizes before
docker image ls | grep project
backend-project     latest      c447505df502     33 minutes ago      1.88GB
frontend-project    latest      2796a1e40ee2     33 minutes ago      1.88GB

# Image sizes after
docker image ls | grep project
backend-project     latest      a3400fa2c953     4 minutes ago       1.54GB
frontend-project    latest      10b7fd03fe59     57 seconds ago      1.88GB