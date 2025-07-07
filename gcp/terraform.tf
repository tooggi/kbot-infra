terraform {
  required_version = ">= 1.12.0"

  backend "gcs" {
    bucket = "kbot-demo"
    prefix = "terraform/state"
  }

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 1.6.3"
    }
  }
}

