# Exercise 3.7
As you may have guessed, you shall now return to the frontend and backend from the previous exercise.

Change the base image in FROM to something more suitable. To avoid the extra hassle, it is a good idea to use a pre-installed image for both Node.js and Golang. Both should have at least Alpine variants ready in DockerHub.

Note that the frontend requires Node.js version 16 to work, so you must search for a bit older image.

Make sure the application still works after the changes.

Document the size before and after your changes.

# Image sizes before
docker image ls | grep project

backend-project latest a3400fa2c953 4 minutes ago 1.54GB

frontend-project latest 10b7fd03fe59 57 seconds ago 1.88GB

# Image sizes after
docker image ls | grep project

backend-project latest 204fe00a84f8 About a minute ago 651MB

frontend-project latest 11f3636bfa75 13 minutes ago 929MB