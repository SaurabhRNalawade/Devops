### What is Docker?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code, you can significantly reduce the delay between writing code and running it in production.
### Architecture of Docker:
![image](https://github.com/user-attachments/assets/4fa4f548-6a3e-441a-b19c-2e4f133bfdec)
![image](https://github.com/user-attachments/assets/93d1d31e-032c-4ea3-bc03-f6ff4d4cb429)

#### The Docker client
- The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.
#### The Docker daemon
- The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.
#### Docker registries
- A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker looks for images on Docker Hub by default. You can even run your own private registry.

- When you use the docker pull or docker run commands, Docker pulls the required images from your configured registry. When you use the docker push command, Docker pushes your image to your configured registry.
### Difference Between virtual machine and Containers
![image](https://github.com/user-attachments/assets/1d92c895-a67b-43ac-8f00-787f980cb5c6)

