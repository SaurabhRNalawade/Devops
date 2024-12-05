**In Kubernetes, a volume is a storage resource that allows data to be persisted beyond the life of a single Pod. Volumes enable containers in Kubernetes to store and access data, which is especially important in stateless applications or when running stateful workloads. Volumes are mounted into Pods, and the data can be shared between containers within the same Pod or persist between Pod restarts.**

## Common Types of Volumes in Kubernetes:
### EmptyDir:
- A temporary volume that is created when a Pod is assigned to a node.
- When a Pod is removed from a node for any reason, the data in the emptyDir is deleted permanently.
````
apiVersion: v1
kind: Pod
metadata:
  name: emptydir-pod
spec:
  containers:
  - name: my-container
    image: nginx
    volumeMounts:
    - mountPath: /usr/share/nginx/html
      name: my-emptydir
  volumes:
  - name: my-emptydir
    emptyDir: {}
````


### HostPath: 
- Mounts a file or directory from the host node’s filesystem into a Pod.
````
apiVersion: v1
kind: Pod
metadata:
  name: hostpath-pod
spec:
  containers:
  - name: my-container
    image: nginx
    volumeMounts:
    - mountPath: /usr/share/nginx/html
      name: my-hostpath
  volumes:
  - name: my-hostpath
    hostPath:
      path: /data/nginx
      type: DirectoryOrCreate
````

### PersistentVolume (PV):
- PV is like a permanent storage which have a lifecycle independent of any individual Pod.
````
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-example
spec:
  capacity:
    storage: 5Gi
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  storageClassName: manual
  hostPath:
    path: "/mnt/data"
````
### PersistentVolumeClaim (PVC):
- A PersistentVolumeClaim (PVC) is a request for storage by a user.
````
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc-example
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
  storageClassName: manual
````
````
apiVersion: v1
kind: Pod
metadata:
  name: mypod
spec:
  containers:
    - name: myfrontend
      image: nginx
      volumeMounts:
      - mountPath: "/var/www/html"
        name: pv-example
  volumes:
    - name: pv-example
      persistentVolumeClaim:
        claimName: pvc-example
````

### ConfigMap:
- Store non-sensitive configuration data, such as key-value pairs of strings or Base64-encoded binary data.
- ConfigMaps are used to keep configuration values separate from code and container images.
````
apiVersion: v1
kind: ConfigMap
metadata:
  name: db-credentials
data:
  DB_URL: "mydbinstance.c6c8dfghilnt.us-east-1.rds.amazonaws.com"
  DB_USERNAME: "admin"
````
### Secrets:
- Secret volumes store sensitive information (e.g., passwords, API tokens), and Kubernetes ensures that access to these secrets is secure.
- Secrets are used to keep confidential data separate from app code.

**To encrypt password**
````
echo -n 'passws123' | base64
````
**To decrypt password**
````
echo -n 'bXlzZWNyZXRwYXNzd29yZA== ' | base64 --decode
````
````
apiVersion: v1
kind: Secret
metadata:
  name: db-password
type: Opaque
data:
  password: UGFzc3dkMTIzJA==  # Base64 encoded value of 'password'
````
**deployment file**
````
apiVersion: apps/v1
kind: Deployment
metadata:
  name: docker-app
  labels:
    app: docker-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: docker-app
  template:
    metadata:
      labels:
        app: docker-app
    spec:
      containers:
      - name: docker-app
        image: abhipraydh96/docker-app
        ports:
        - containerPort: 80
        env:
        - name: DB_URL
          value: "database-1.cnee62wsiw85.ap-southeast-1.rds.amazonaws.com"
    
        - name: DB_USERNAME
          value: "mydatabase"
        - name: DB_USERNAME
          valueFrom:
            secretKeyRef:
              name: db-credentials
              key: DB_USERNAME
        - name: DB_PASSWORD
          valueFrom:
            secretKeyRef:
              name: db-password
              key: password
        resources:
          requests:
            memory: "128Mi" # Minimum memory guaranteed
            cpu: "250m"     # Minimum CPU guaranteed
          limits:
            memory: "256Mi" # Maximum memory allowed
            cpu: "500m"     # Maximum CPU allowed
````
