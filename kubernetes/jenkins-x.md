# Install jenkins X using minikube
### Refrences:

1. install guide - [jenkins-x installation using minikube](https://jenkins-x.io/v3/admin/platforms/minikube/)

1. install guide - [minikube installation](https://minikube.sigs.k8s.io/docs/start/)

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
```

```bash
curl -L https://github.com/jenkins-x/jx/releases/download/v3.10.134/jx-linux-amd64.tar.gz | tar xzv
chmod +x jx 
sudo mv jx /usr/local/bin
```
