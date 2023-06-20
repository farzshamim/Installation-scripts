----------------------------------------------------MINIKUBE_INSTALLATION----------------------------------------------

STEP 1 : download the Minikube binary for Linux (amd64 architecture) from the specified URL.
--->> curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

STEP 2 : install the minikube from the downloaded binaries in the directory '/usr/local/bin/minikube'
--->> sudo install minikube-linux-amd64 /usr/local/bin/minikube

STEP 3 : prerequisite for using minikube, install Kubectl
--->> sudo snap install kubectl --classic
--->> minikube start

STEP 4 : verify if the pods are created or not
--->> kubectl get pods
--->> kubectl get namespaces
