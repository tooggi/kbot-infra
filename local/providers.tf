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
