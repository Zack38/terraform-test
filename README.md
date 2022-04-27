# Integrating the Helm provider with Terraform and EKS

You can provision an EKS cluster and install Helm packages at the same time with:

1. First download terraform for your OS at https://www.terraform.io/downloads

2. Go to the vars.tf file and enter in your access key and secret key for aws. You will also need to download the aws cli and log in.

3.  Run the commands below in order to build the resources requested in your environment. 

```bash
terraform init
terraform plan
terraform apply
```

It might take a while for the cluster to be creates (up to 15-20 minutes).

As soon as cluster is ready, you should find a `kubeconfig_my-cluster` kubeconfig file in the current directory.

The current code automatically installs the ALB Ingress Controller with Helm.

4. Run command below to deploy Ingress manifest to the cluster.

```bash
kubectl apply -f ./manifests/ingress.yaml
```

5.  You can check the applications with these two commands. 

```bash
kubectl describe ingress search-api
```

```bash
kubectl describe ingress graph-api
```