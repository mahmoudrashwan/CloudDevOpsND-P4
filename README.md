![mahmoudrashwan](https://circleci.com/gh/mahmoudrashwan/CloudDevOpsND-P4.svg?style=svg)
# CloudDevOpsND-P4 

## Project Overview
This project for operationalize production machine learning microservice API Using: Docker, Kubernetes, and CircleCI.
The Original python application based on `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios.
##  Project Scope
* Test project code using linting [Hadolint and pylint].
* Configure docker to containerize the application.
* Deploy containerized application using Docker and making a prediction.
* Improve the log statements in the source code of this application.
* Configure Kubernetes [Locally: using > (cubectl and minikube)] and create a Kubernetes cluster.
* Deploy a container using Kubernetes cluster locally and make a prediction.
* Publish Docker image to DockerHub.
* Configure CircleCI to automate build and test containerized application.


### How to run
#### Run source code and make a prediction locally:
- Create a virtual env and source it
    ```bash
    make setup
    source ~/.devops/bin/activate
    ```

- Install dependencies
    ```bash 
    make install
    ```

- Run WebApp
    ```bash
    python app.py
    ```
    The application will be up and running on http://localhost

- Make a prediction
    Open a new terminal and run:
    ```bash
    ./make_prediction.sh
    ```

#### Run in Docker:
- From terminal run:
        ```bash
        ./run_docker.sh
        ```
    The application will be up and running on [http://localhost:8000] or [http://$Server-dns-Name:8000] or [http://$Server-ip:8000]

#### Run in kubernetes:
- From terminal run:
        ```bash
        ./run_kubernetes.sh
        ```
    The application will be up and running on [http://localhost:8000] or [http://$Server-dns-Name:8000] or [http://$Server-ip:8000]

### Linting
Next command should be executed from inside a virtualenv [~/.devops]
```bash
make lint
```
### Author
By: [Mahmoud Rashwan]
