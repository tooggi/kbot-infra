terraform {
  required_version = ">= 1.12.0"
  required_providers {

    kind = {
      source  = "tehcyx/kind"
      version = ">= 0.9.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.0.2"
    }
  }
}

provider "kind" {}

provider "helm" {
  kubernetes {
    host = kind_cluster.local.endpoint

    client_certificate     = kind_cluster.local.client_certificate
    client_key             = kind_cluster.local.client_key
    cluster_ca_certificate = kind_cluster.local.cluster_ca_certificate
  }
}
