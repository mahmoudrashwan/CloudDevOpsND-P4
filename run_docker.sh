#!/usr/bin/env bash

# Step 1:
docker build --tag=mahmoudrashwan001/sklearn-ml-app .

# Step 2: 
docker image ls

# Step 3: 
docker run -t -p 8000:80 sklearn-ml-app
