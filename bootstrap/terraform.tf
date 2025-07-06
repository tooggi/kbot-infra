terraform {
  required_version = ">= 1.12.0"
  required_providers {

    kind = {
      source  = "tehcyx/kind"
      version = ">= 0.9.0"
    }

    github = {
      source  = "integrations/github"
      version = ">= 6.6.0"
    }

    flux = {
      source  = "fluxcd/flux"
      version = ">= 1.6.3"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.0.2"
    }
  }
}

provider "kind" {}

provider "helm" {
  kubernetes = {
    host = kind_cluster.local.endpoint

    client_certificate     = kind_cluster.local.client_certificate
    client_key             = kind_cluster.local.client_key
    cluster_ca_certificate = kind_cluster.local.cluster_ca_certificate
  }
}

provider "github" {
  owner = var.github_org
  token = var.github_token
}

provider "flux" {
  kubernetes = {
    host = kind_cluster.local.endpoint

    client_certificate     = kind_cluster.local.client_certificate
    client_key             = kind_cluster.local.client_key
    cluster_ca_certificate = kind_cluster.local.cluster_ca_certificate
  }

  git = {
    url = "https://github.com/${var.github_org}/${var.github_repository}.git"
    http = {
      username = var.github_username
      password = var.github_token
    }
  }
}
