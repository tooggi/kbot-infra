variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "kbot-demo"
}

variable "github_org" {
  description = "GitHub organization name"
  type        = string
  default     = "tooggi"
}

variable "github_repository" {
  description = "GitHub repository name"
  type        = string
  default     = "demo-flux"
}

variable "github_username" {
  description = "GitHub username for authentication"
  type        = string
  default     = "flux-user"
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
}

variable "target_path" {
  description = "Flux manifests subdirectory"
  type        = string
  default     = "clusters/local"
}
