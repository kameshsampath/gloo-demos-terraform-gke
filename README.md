# Gloo Demos Terraform

The terraform scripts for building and deploying Gloo Mesh/Edge clusters on GKE.

## Pre-requsities

- [GCP Account](https://console.cloud.google.com/)
- [Terraform CLI](https://terraform.io)
- [kubectl](https://kubectl.docs.kubernetes.io/installation/kubectl/)
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

## Variables

The terraform script allows configuring the following variables:

| Syntax      | Description                                      | Default |
| ----------- | ------------------------------------------------ | ------- |
| region      | Google Cloud Region, defaults to **asia-south1** |
| vpc_name    | The gloo mesh VPC name                           | gloo    |
| subnet_name | The goo mesh cluster subnet name name            | gloo    |
| num_nodes   | Number of nodes in GKE per cluster name          | 3       |

## Deploy Clusters

```shell
cp .env.example .env
```

Adjust the `.env` to suit your environment.

```shell
make apply
```

The successful command shows an output like,

```text
gloo_clusters_info = {
       gloo-cluster-1 = {
           kubernetes_cluster_endpoint = 192.168.1.1
           kubernetes_cluster_name     = "gloo-cluster-1"
           kubernetes_cluster_zone     = "asia-south1-a"
        }
       gloo-cluster-2 = {
           kubernetes_cluster_endpoint = 192.168.1.2
           kubernetes_cluster_name     = "gloo-cluster-2"
           kubernetes_cluster_zone     = "asia-south1-a"
        }
       gloo-cluster-3 = {
           kubernetes_cluster_endpoint = 192.168.1.3
           kubernetes_cluster_name     = "gloo-cluster-3"
           kubernetes_cluster_zone     = "asia-south1-a"
        }
    }
```

Use the `kubernetes_cluster_name` and `kubernetes_cluster_zone` with `gcloud` to retrieve the kubernetes credentials

```shell
gcloud container clusters get-credentials $kubernetes_cluster_name --zone $kubernetes_cluster_zone
```
