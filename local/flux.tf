resource "flux_bootstrap_git" "this" {
  depends_on = [kind_cluster.local, github_repository.this]

  path    = var.target_path
  version = "v2.6.3"
}
