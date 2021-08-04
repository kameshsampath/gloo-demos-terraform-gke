# Gloo Demos Terraform

The terraform scripts for building and deploying Gloo Mesh/Edge clusters on GKE.

## Pre-requsities

- terraform
- kubectl
- helm

## Variables

The terraform script allows configuring the following variables:

| Syntax      | Description                                                                                 | Default   |
| ----------- | ------------------------------------------------------------------------------------------- | --------- |
| region      | Google Cloud zone, defaults to **asia-south1-c**                                            |
| vpc_name    | The gloo mesh VPC name                                                                      | gloo      |
| subnet_name | The goo mesh cluster subnet name name                                                       | gloo      |
| num_nodes   | Number of nodes in GKE per cluster name                                                     | 3         |
| istio_auth  | The Istio authentication mode, possible values **AUTH_NONE**and value is**AUTH_MUTUAL_TLS** | AUTH_NONE |

## Deploy Clusters

```shell
cp .env.example .env
```
