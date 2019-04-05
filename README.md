# Study: Azure, Terraform (and a bit Kubernetes)

Requirements:

* Terraform
* Azure subscription
* Azure CLI

Setup:

* Create an application to your Azure directory
* Give it Contributor Role in Subscription
* Create a Blob Storage Container for Terraform state files
* (CLI commands left as excercise for the user :smile: )

Login

```ps1
az login
az account set --subscription <ID-HERE>
```

Terraform commands of interest to demo:

```ps1
terraform init
terraform plan
terraform apply
terraform output
```

Connect to Kubernetes:

```ps1
# Acquire credentials for kubectl
az aks get-credentials --resource-group bootcamp --name bootcamp_aks

# Pipe K8s dashboard:
az aks browse --resource-group bootcamp --name bootcamp_aks
```

Once created (outside of scope), find K8s deployment's/service's external IP:

```ps1
kubectl get service bootcampfoobar1 --watch
```
