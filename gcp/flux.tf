resource "flux_bootstrap_git" "this" {
  depends_on = [module.gke_cluster]

  path    = var.target_path
  version = "v2.6.3"
}
