---------------------------------------- Kubeadm Installation ------------------------------------------ 

-------------------------------------- Both Master & Worker Node ---------------------------------------

Run as root:-

- apt update
- curl -fsSL "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kubernetes-archive-keyring.gpg
- echo 'deb https://packages.cloud.google.com/apt kubernetes-xenial main' > /etc/apt/sources.list.d/kubernetes.list
- apt update -y
- apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y
- apt install docker.io -y

--------------------------------------------- Master Node -------------------------------------------------- 
Run as root:-

kubeadm init

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
  
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

kubeadm token create --print-join-command
  
  
------------------------------------------- Worker Node ------------------------------------------------ 
Run as root:-

kubeadm reset pre-flight checks
-----> Paste the Join command on worker node with `--v=5`

---------------------------------------on Master Node-----------------------------------------

kubectl get nodes 
