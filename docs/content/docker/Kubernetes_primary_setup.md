##Creating a Kubernetes Cluster

Now install Azure CLI and run Powershell with admin.

Here we will create a new resource group.
> az group create --name kubernetesgrp --location eastus2

Then we will create a new Kubernetes cluster
> az aks create --resource-group kubernetesgrp --name democluster --node-count 1 --enable-addons monitoring --generate-ssh-keys

We will then install the kubectl tool
> az aks install-cli --install-location=./kubectl

This allows kubectl to connect to the Kubernetes cluster
> az aks get-credentials --resource-group kubernetesgrp --name democluster 

Get list of all running Kubernetes nodes
> kubectl get nodes

##Deploying nginx on the Kubernetes cluster

kubectl apply -f app.yml

kubectl apply -f service.yml

kubectl get service nginx-service --watch

##Some pre-requisites
az extension add --name aks-preview
az aks update -g $AKS_RESOURCE_GROUP -n $AKS_CLUSTER_NAME --enable-managed-identity

##Deploying nginx on the Kubernetes cluster using DOcker Registry

Old cleanup
> kubectl delete services nginx-service
> 
> kubectl delete deployment nginx-deployment

Create App & Service
> $AKS_RESOURCE_GROUP="kubernetesgrp" 
> 
> $AKS_CLUSTER_NAME="democluster" 
> 
> $ACR_RESOURCE_GROUP="RG-SID-Docker" 
> 
> $ACR_NAME="dashregistry" 
> 
> $CLIENT_ID=$(az aks show --resource-group $AKS_RESOURCE_GROUP --name $AKS_CLUSTER_NAME --query "servicePrincipalProfile.clientId" --output tsv)
> 
> $ACR_ID=$(az acr show --name $ACR_NAME --resource-group $ACR_RESOURCE_GROUP --query "id" --output tsv)
> 
> az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID
> 
> kubectl apply -f app.yml
> 
> kubectl apply -f service.yml
> 
> kubectl get service my-service --watch


