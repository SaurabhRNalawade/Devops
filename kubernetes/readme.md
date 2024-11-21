# ${\color {blue} \textbf {Kubernetes}}$
### What is Kubernetes?
Kubernetes (often abbreviated as K8s) is an open-source platform designed to automate the deployment, scaling, management, and operation of containerized applications. It is a container orchestration tool that helps developers and IT teams efficiently manage the lifecycle of containers, which are lightweight, portable units of software that package applications and their dependencies.
### Difference between k8s and docker?
![image](https://github.com/user-attachments/assets/44a7e55b-67d4-4be0-bad0-bc51bebe4e00)

### Cluster Architecture
![image](https://github.com/user-attachments/assets/b0b87441-b860-4523-a0b0-ba536f875541)
## 1. Kubernetes Cluster Components
A Kubernetes cluster is made up of two main types of components:

- Control Plane (also called the Master Node): Responsible for managing the cluster and making global decisions about the cluster (e.g., scheduling, scaling).
- Worker Nodes (also called Node): Responsible for running the actual applications (containers) and handling the workload defined by the control plane.
Key Components of a Kubernetes Cluster:
### Control Plane Components
The Control Plane is responsible for managing the Kubernetes cluster, making decisions about resource allocation, and ensuring that the desired state of the system is maintained. It contains the following key components:

### 1. API Server (kube-apiserver)
- #### Function:
   - The API server is the entry point for all interactions with the Kubernetes cluster. It exposes the Kubernetes API, which provides the interface for users and components to query and modify the state of the cluster.
- #### Role:
   - It handles REST requests from users, controllers, or external clients.
   - Acts as the communication hub between the different components of Kubernetes.
### 2. Scheduler (kube-scheduler)
- #### Function:
   -  The scheduler is responsible for selecting which worker node (or machine) a newly created pod should run on, based on resource requirements, policies, and constraints.
- #### Role:
   - It schedules pods onto worker nodes that have enough resources (CPU, memory, storage).
   - It takes into account constraints like node affinity, taints, tolerations, and available resources when deciding on pod placement.
### 3. Controller Manager (kube-controller-manager)
- #### Function:
   - The controller manager runs controllers that regulate the state of the cluster. Each controller watches the cluster state and takes action to bring the actual state in line with the desired state.
- #### Role:
   - Replication Controller: Ensures the desired number of pod replicas are running.
   - Deployment Controller: Manages application deployments, including rolling updates.
   - Node Controller: Manages the state of nodes.
   - EndPoint Controller: Maintains endpoints for services.
   - StatefulSet Controller: Manages the deployment and scaling of stateful applications.
### 4. etcd
- #### Function:
   -  etcd is a distributed key-value store used to store the configuration data and state of the cluster.
- #### Role:
   - It acts as the central source of truth for the Kubernetes cluster.
   - Stores all cluster data like configurations, secrets, and metadata (e.g., nodes, pods, services).
   - etcd is crucial for ensuring consistency and recovery in case of failure.
### Worker Node Components
Worker nodes are the machines that run containerized applications, and they contain several components to ensure the proper running of pods and containers.

### 1. Kubelet
- #### Function:
   - The kubelet is an agent that runs on each worker node in the cluster. It ensures that the containers defined in Kubernetes pods are running as expected.
- #### Role:
   - Communicates with the API server to receive instructions about the pods it should be running.
   - Ensures the containers in a pod are running, reporting the status back to the control plane.
   - Handles pod lifecycle operations like starting, stopping, and restarting containers when necessary.
### 2. Kube Proxy
- #### Function:
   -  The kube proxy is responsible for managing network communication within the cluster, ensuring that traffic is correctly routed to the appropriate containers or services.
- #### Role:
   - Manages load balancing for services and handles traffic routing for pod-to-pod communication.
   - Implements network rules (for example, handling IP tables) to enable services and pods to communicate within the cluster.
   - Ensures that requests are directed to the correct container, even as pods are created and destroyed dynamically.
### 3. Container Runtime
- #### Function:
   -  The container runtime is the software responsible for running containers on the worker node. Kubernetes supports different container runtimes like Docker, containerd, and CRI-O.
- #### Role:
   - Pulls container images from container registries (e.g., Docker Hub).
   - Runs containers as defined in the pod specification.
   - Manages the lifecycle of containers (start, stop, and monitor).
###  Kubernetes Objects
Kubernetes organizes the workloads in the cluster using objects. Objects represent the desired state of the system. Some important Kubernetes objects are:

- #### Pod:
   - A Pod is the smallest and simplest unit in Kubernetes. It is a group of one or more containers that share the same network IP, storage, and namespace. Pods are used to run containers within a Kubernetes cluster.
- #### Service:
   - A Service is a stable, abstract way to expose a set of pods to network traffic. It provides load balancing and service discovery for pods.
- #### Deployment:
   - A Deployment manages the lifecycle of pods, ensuring that the correct number of pod replicas are running. It supports features like rolling updates, scaling, and version rollbacks.
- #### ReplicaSet:
   - A ReplicaSet ensures that a specified number of pod replicas are running at any given time. It’s often managed by a Deployment.
- #### StatefulSet:
   - A StatefulSet is used for managing stateful applications (like databases) that require stable, persistent storage and unique network identifiers.
- #### ConfigMap and Secret:
   - ConfigMaps allow you to store configuration data as key-value pairs that can be consumed by applications running in Kubernetes.
   - Secrets are similar to ConfigMaps, but they are designed for sensitive data (e.g., passwords, tokens).
- #### Namespace:
   - Namespaces are a way to partition resources in a Kubernetes cluster. They provide a scope for names and allow multiple users or teams to share a cluster while maintaining isolation.
