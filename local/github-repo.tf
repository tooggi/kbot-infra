resource "github_repository" "this" {
  name       = var.github_repository
  visibility = "public"
  auto_init  = true
}
