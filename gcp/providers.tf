provider "flux" {
  kubernetes = {
    host                   = module.gke_cluster.config_host
    cluster_ca_certificate = module.gke_cluster.config_ca
    token                  = module.gke_cluster.config_token
  }

  git = {
    url = "https://github.com/${var.github_org}/${var.github_repository}.git"
    http = {
      username = var.github_username
      password = var.github_token
    }
  }
}
