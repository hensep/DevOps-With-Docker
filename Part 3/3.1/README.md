# Exercise 3.1: Your pipeline
Create now a similar deployment pipeline for a simple Node.js/Express app found here.

Either clone the project or copy the files to your own repository. Set up a similar deployment pipeline (or the "first half") using GitHub Actions that was just described. Ensure that a new image gets pushed to Docker Hub every time you push the code to GitHub (you may eg. change the message the app shows).

Note that there is an important change that you should make to the above workflow configuration, the branch should be named main:

name: Release Node.js app

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      # ...

The earlier example still uses the old GitHub naming convention and calls the main branch master.

Some of the actions that the above example uses are a bit outdated, so go through the documentation

actions/checkout
docker/login-action
docker/build-push-action
and use the most recent versions in your workflow.

Keep an eye on the GitHub Actions page to see that your workflow is working: