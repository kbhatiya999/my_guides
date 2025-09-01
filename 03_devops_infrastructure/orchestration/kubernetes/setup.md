# Markdown Cheatsheet
[https://www.markdownguide.org/cheat-sheet/](https://www.markdownguide.org/cheat-sheet/)
---
# Install kubernetes using minikube
## Step1 : Install docker
Do it yourself ...
## Step 2 : Install minikube
Follow the guide
[Minikube Getting Started](https://minikube.sigs.k8s.io/docs/start/)

Or just run below commands :
```
brew install minikube
# brew unlink minikube
# brew link minikube
alias kubectl="minikube kubectl --"

```
## Step 3 : Start/Stop kubernetes cluster
```
minikube start
```
```
minikube stop
```
``` To see kubernetes dashboard

minikube dashboard
```
---
