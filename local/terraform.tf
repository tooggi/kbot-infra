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

